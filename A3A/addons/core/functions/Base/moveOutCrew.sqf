/*
Author: wersal
Attempts to move out any crew(including UAV ai) from the vehicle.

Arguments:
    <OBJECT> Player who is trying to sell a vehicle.
    <OBJECT> cursorObject of the player.

Return Value:
<NIL> nil

Scope: Server/HC, All calls need to be executed on one machine, using an HC is also possible.
Environment: Unscheduled, is used to sell vehicles, execution cannot be stacked and exploited.
Public: No
Dependencies:
<STRING> ownerX found on vehicles, contains UID of player who bought it.
<ARRAY> Template vehicle arrays, see costs = call {}.

Example:
// From a button control:
action = "if (player == theBoss) then {closeDialog 0; nul = [player,cursorObject] remoteExecCall [""A3A_fnc_moveOutCrew"",2]} else {["localize "STR_A3A_Base_sellVehicle_header"", ""Only the Commander can sell vehicles.""] call A3A_fnc_customHint;};";

// Testing spam:
for "_i" from 1 to 1000 do {
    [player,cursorObject] remoteExecCall ["A3A_fnc_moveOutCrew",2];
};

*/

params [
    ["_player",objNull,[objNull]],
    ["_veh",objNull,[objNull]]
];
#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

#define OccAndInv(VAR) (FactionGet(occ, VAR) + FactionGet(inv, VAR))

if (isNull _player) exitWith { Error("_player is null.") };
if (isNull _veh) exitWith {
    [localize "STR_A3A_Base_sellVehicle_header", localize "STR_A3A_reinf_airstrike_not_looking_at_veh"] remoteExecCall ["SCRT_fnc_misc_deniedHint",_player];
};

_owner = _veh getVariable ["ownerX",""];
if !(_owner isEqualTo "" || {getPlayerUID _player isEqualTo _owner}) exitWith {  // Vehicle cannot be sold if owned by another player.
    [localize "STR_A3A_Base_sellVehicle_header", localize "STR_A3A_Base_sellVehicle_err2"] remoteExecCall ["SCRT_fnc_misc_deniedHint",_player];
};

if (((crew _veh) == side west || (crew _veh) == side east) && alive (crew _veh)) exitWith {
    [localize "STR_A3A_Base_sellVehicle_header", localize "STR_A3A_Base_sellVehicle_err1"] remoteExecCall ["SCRT_fnc_misc_deniedHint",_player];
};

/* if (_veh getVariable ["A3A_moveOutCrew_inProgress",false]) exitWith {[localize "STR_A3A_Base_sellVehicle_header", localize "STR_A3A_Base_sellVehicle_err3"] remoteExecCall ["SCRT_fnc_misc_deniedHint",_player];};
_veh setVariable ["A3A_moveOutCrew_inProgress",true,false];   */ // Only processed on the server. It is absolutely pointless trying to network this due to race conditions.

{
	moveOut _x 
} forEach units crew _veh;

{
	_x action ["Eject", _veh];
    unassignVehicle _x;
} forEach units crew _veh;

{
    _x leaveVehicle _helicopter;
} forEach units crew _veh;

[localize "STR_A3A_Base_sellVehicle_header", localize "STR_A3A_Base_sellVehicle_success"] remoteExecCall ["A3A_fnc_customHint",_player];
nil;
