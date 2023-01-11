#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_incomingUnits"];

if (!visibleMap) then {openMap true};
positionTel = [];

showCommandingMenu "";
onMapSingleClick "positionTel = _pos; true";

[localize "STR_A3A_garrison_header", localize "STR_A3A_garrison_select_zone"] call A3A_fnc_customHint;

waitUntil {sleep 0.5; positionTel isNotEqualTo [] or {!visiblemap}};
onMapSingleClick "";

if (!visibleMap) exitWith {};

private _positionTel = positionTel;
private _nearX = [markersX,_positionTel] call BIS_fnc_nearestPosition;

if !(_positionTel inArea _nearX) exitWith {
    [localize "STR_A3A_garrison_header", format [localize "STR_A3A_garrison_fail_not_markerzone",FactionGet(reb,"name")]] call A3A_fnc_customHint;
};

if (not(sidesX getVariable [_nearX,sideUnknown] == teamPlayer)) exitWith {
    [localize "STR_A3A_garrison_header", format [localize "STR_A3A_garrison_fail_not_teamplayer",FactionGet(reb,"name")]] call A3A_fnc_customHint;
};

if (_nearX in outpostsFIA and {!isOnRoad getMarkerPos _nearX}) exitWith {
    [localize "STR_A3A_garrison_header", localize "STR_A3A_garrison_fail_wrong_type"] call A3A_fnc_customHint;
};

private _groupX = grpNull;
private _unitsX = objNull;

if ((_incomingUnits select 0) isEqualType grpNull) then {
    _groupX = _incomingUnits select 0;
    _unitsX = units _groupX;
} else {
    _unitsX = _incomingUnits;
};

private _limit = [_nearX] call A3A_fnc_getGarrisonLimit;
private _newGarrison = (count (units _groupX)) + (count (garrison getVariable [_nearX, []]));
if (_limit != -1 && {_newGarrison > _limit}) exitWith {
    [localize "STR_A3A_garrison_header", localize "STR_A3A_garrison_exceed_limit"] call A3A_fnc_customHint;
};

if (_limit != -1 && {_newGarrison > _limit}) then {
    createDialog "A3A_hcDismissalDialog";
    sleep 1;
    disableSerialization;
    waitUntil {!dialog or {!isNil "A3A_hcDismissalDialog"}};
};

// #ifdef UseDoomGUI
//     ERROR("Disabled due to UseDoomGUI Switch.")
// #else
//     createDialog "hcDismissalDialog";
// #endif
// sleep 1;
// disableSerialization;
// private _display = findDisplay 500;

// if (str (_display) != "no display") then {
// 	private _childControl = _display displayCtrl 104;
// 	(_display displayCtrl 105) ctrlSetTooltip format ["Buy a vehicle for this squad for %1 €.", _vehCost];
// 	_childControl = _display displayCtrl 105;
// 	(_display displayCtrl 105) ctrlSetTooltip "Barefoot Infantry";
// };

// waitUntil {(!dialog) or (!isNil "vehQuery")};
// if ((!dialog) and (isNil "vehQuery")) exitWith { [_formatX, _idFormat, _special, objNull] spawn A3A_fnc_spawnHCGroup }; //spawn group call here



private _leave = false;
private _alreadyInGarrison = false;
{
    private _garrisondIn = _x getVariable "markerX";
    if !(isNil "_garrisondIn") then {_alreadyInGarrison = true};
} forEach _unitsX;
if _alreadyInGarrison exitWith {
    [localize "STR_A3A_garrison_header", localize "STR_A3A_garrison_fail_already_in_garrison"] call A3A_fnc_customHint
};

if (groupID _groupX == "MineF" or groupID _groupX == "Post" or (isPlayer(leader _groupX))) exitWith {
    [localize "STR_A3A_garrison_header", localize "STR_A3A_garrison_fail_no_specific_squads"] call A3A_fnc_customHint;
};

{
    if (isPlayer _x or !alive _x) exitWith {_leave = true};
} forEach _unitsX;
if (_leave) exitWith {
    [localize "STR_A3A_garrison_header", localize "STR_garrison_fail_dead_units"] call A3A_fnc_customHint;
};

private _bannedTypes = FactionGet(civ, "unitMan") + 
    FactionGet(civ, "unitPress") + 
    FactionGet(civ, "unitWorker") + 
    FactionGet(reb,"unitCrew") + 
    FactionGet(reb,"unitUnarmed") + 
    FactionGet(reb,"unitPetros");

{
    private _unitType = _x getVariable "unitType";
    if (_unitType in _bannedTypes) exitWith {_leave = true};
} forEach _unitsX;
if (_leave) exitWith {
    [localize "STR_A3A_garrison_header", localize "STR_garrison_fail_no_specific_units"] call A3A_fnc_customHint;
};

if (isNull _groupX) then {
    _groupX = createGroup teamPlayer;
    _unitsX joinSilent _groupX;
    [localize "STR_A3A_garrison_header", localize "STR_A3A_garrison_adding_to_garrison"] call A3A_fnc_customHint;
} else {
    [localize "STR_A3A_garrison_header", format [localize "STR_A3A_garrison_adding_to_garrison_hc", groupID _groupX]] call A3A_fnc_customHint;
    theBoss hcRemoveGroup _groupX;
};

// Send types, because the units may be deleted before the remoteExec hits
private _unitTypes = _unitsX apply { _x getVariable "unitType" };
[_unitTypes,teamPlayer,_nearX,0] remoteExec ["A3A_fnc_garrisonUpdate",2];
private _noDeletion = false;

if (spawner getVariable _nearX != 2) then {
    private _targPos = getMarkerPos _nearX;
    private _wp = _groupX addWaypoint [(getMarkerPos _nearX), 0];
    _wp setWaypointType "MOVE";
    _groupX setCurrentWaypoint _wp;
    {
    _x setVariable ["markerX",_nearX,true];
    _x setVariable ["spawner",nil,true];
    _x addEventHandler ["killed",
        {
        _victim = _this select 0;
        _markerX = _victim getVariable "markerX";
        if (!isNil "_markerX") then
            {
            if (sidesX getVariable [_markerX,sideUnknown] == teamPlayer) then {
                [_victim getVariable "unitType",teamPlayer,_markerX,-1] remoteExec ["A3A_fnc_garrisonUpdate",2];
                _victim setVariable [_markerX,nil,true];
                };
            };
        }];
    } forEach _unitsX;

    // trigger actual garrison join when close to target
    [_nearX, _groupX] spawn {
        params ["_marker", "_group"];
        waitUntil {
            sleep 5;
            isNull leader _group or { leader _group distance getMarkerPos _marker < 20 }
        };
        sleep 10;			// give units some time to get onto marker
        if !(isNull leader _group) then { [_marker] remoteExec ["A3A_fnc_updateRebelStatics", 2] };
    };

    waitUntil {sleep 1; spawner getVariable _nearX == 2 or {!(sidesX getVariable [_nearX,sideUnknown] == teamPlayer)}};
    if (!(sidesX getVariable [_nearX,sideUnknown] == teamPlayer)) exitWith {_noDeletion = true};
};

if (!_noDeletion) then {
    {deleteVehicle _x} forEach (_unitsX select {alive _x});
    deleteGroup _groupX;
} else {
    {
        _x setVariable ["markerX",nil,true];
        _x setVariable ["spawner",true,true];
        _x removeAllEventHandlers "killed";
        _x addEventHandler ["killed", {
            params ["_victim", "_killer"];
            [_victim] remoteExec ["A3A_fnc_postmortem",2];
            if ((isPlayer _killer) and (side _killer == teamPlayer)) then {
                if (!isMultiPlayer) then {
                    _nul = [0,20] remoteExec ["A3A_fnc_resourcesFIA",2];
                    _killer addRating 1000;
                };
            } else {
                if (side _killer == Occupants) then {
                    _nul = [0.25,0,getPos _victim] remoteExec ["A3A_fnc_citySupportChange",2];
                    [Occupants, -1, 30] remoteExec ["A3A_fnc_addAggression",2];
                } else {
                    if (side _killer == Invaders) then {[Invaders, -1, 30] remoteExec ["A3A_fnc_addAggression",2]};
                };
            };
            _victim setVariable ["spawner",nil,true];
        }];
    } forEach (_unitsX select {alive _x});
    theBoss hcSetGroup [_groupX];
    [localize "STR_A3A_garrison_header", format [localize "STR_A3A_garrison_fail_zone_lost", groupID _groupX]] call A3A_fnc_customHint;
};
