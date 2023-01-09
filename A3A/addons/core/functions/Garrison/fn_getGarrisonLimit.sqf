/*
Author: Socrates
Description:
    Returns garrison limit for an outpost.

Arguments:
   <STRING> Marker type.

Return Value: In

Scope: Clients
Environment: Any
Public: No
Dependencies:

Example: [_marker] call A3A_fnc_getGarrisonLimit;

License: MIT License
*/

#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params [
	["_marker", "", [""]]
];

if (_marker isEqualTo "") exitWith {
	Error("Marker name is empty.");
};

private _limit = switch (true) do {
	case (_marker in airportsX): {
		floor (A3A_rebelGarrisonLimit * 1.5)
	};
	case (_marker in factories || {_marker in resourcesX}): {
		floor (A3A_rebelGarrisonLimit * 0.5)
	};
	default {
		A3A_rebelGarrisonLimit
	};
};

_limit