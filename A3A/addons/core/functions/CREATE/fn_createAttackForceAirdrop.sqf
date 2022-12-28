/*  
Maintainer: John Jordan
    Create air attack force

Scope: Server or HC
Environment: Scheduled (sleeps between unit spawns)

Arguments:
    <SIDE> Side to create force for
    <STRING> Marker name of source base to spawn at
    <POS or STRING> Position or marker of target location for attack force
    <STRING> Resource pool to use
    <INTEGER> Total number of vehicles to create
    <INTEGER> Number of attack/support vehicles to create
    <NUMBER> Optional, tier modifier to apply to vehicle selection (Default: 0)
    <STRING> Optional, troop type to use (Default: "Normal")

Return array:
    <SCALAR> Resources spent
    <ARRAY> Array of vehicle objects created
    <ARRAY> Array of crew groups created
    <ARRAY> Array of cargo groups created
*/
#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_side", "_base", "_target", "_resPool", "_vehCount", "_vehAttackCount", ["_tierMod", 0], ["_troopType", "Normal"]];
private _targpos = if (_target isEqualType []) then { _target } else { markerPos _target };

private _resourcesSpent = 0;
private _vehicles = [];
private _crewGroups = [];
private _cargoGroups = [];

private _faction = Faction(_side);
private _transportPlanes = _faction get "vehiclesPlanesTransport";

private _transportPlanesPool = [];
{ _transportPlanesPool append [_x, 1 / count _transportPlanes] } forEach _transportPlanes;

for "_i" from 1 to _vehCount do {
    private _vehType = selectRandomWeighted _transportPlanesPool;

    private _vehData = [_vehType, _troopType, _resPool, [], _side, _base, _targPos, true] call A3A_fnc_createAttackVehicle;
    if !(_vehData isEqualType []) exitWith {};          // couldn't create for some reason. Not sure why for air vehicles.

    _vehicles pushBack (_vehData#0);
    _crewGroups pushBack (_vehData#1);
    if !(isNull (_vehData#2)) then { _cargoGroups pushBack (_vehData#2) };
    _landPosBlacklist = (_vehData#3);

    private _vehCost = A3A_vehicleResourceCosts getOrDefault [_vehType, 0];
    private _crewCost = 10 * (count units (_vehData#1) + count units (_vehData#2));
    _resourcesSpent = _resourcesSpent + _vehCost + _crewCost;
};

[_resourcesSpent, _vehicles, _crewGroups, _cargoGroups];
