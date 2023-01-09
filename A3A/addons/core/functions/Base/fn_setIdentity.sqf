/*
Maintainer: Socrates
    Applies identity on unit in network-friendly way.
	Should be used instead of BIS_fnc_setIdentity as it has some networking/timing quirks.

Arguments:
    <OBJECT> Infanty unit.
    <STRING> Face classname.
	<STRING> Speaker codec classname.
	<NUMBER> Speaker pitch value. Usually authentic values are from 0.9 to 1.1, otherwise it will be Darth Vader or chipmunks. Optional.
	<STRING> Callsign. See https://community.bistudio.com/wiki/setNameSound for more info.
	
Return Value:
    Nothing

Scope: All clients, server exception.
Environment: Unscheduled.
Public: Yes
Dependencies:
    None

Example:
    [_unit, _face, _voice, (random [0.9, 1, 1.1])] call A3A_fnc_setIdentity;
*/

#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params [
	["_unit", objNull, [objNull]],
	["_face", "", [""]],
	["_speaker", "", [""]],
	["_speakerPitch", 1, [1]],
	["_callsign", "", [""]]
];

if (isNull _unit) exitWith {
	Error("Unit is null");
};

_unit setFace _face;
_unit setSpeaker _speaker;

if (_speakerPitch isNotEqualTo 1) then {
	_unit setPitch _speakerPitch;
};

if (_callsign isNotEqualTo "") then {
	_unit setPitch _callsign;
};


// [_unit, _face] remoteExecCall ["setFace", -2, _unit];
// [_unit, _speaker] remoteExecCall ["setSpeaker", -2, _unit];

// if (_speakerPitch isNotEqualTo 1) then {
// 	[_unit, _speakerPitch] remoteExecCall ["setPitch", -2, _unit];
// };

// if (_callsign isNotEqualTo "") then {
// 	[_unit, _callsign] remoteExecCall ["setNameSound", -2, _unit];
// };
