/*
Maintainer: Socrates
    Extracts unit/group from tiered faction variable with war level checks.


Return Value:
    <STRING> Unit class
    <ARRAY> Group of unit classnames

Scope: Client, Server
Environment: Any
Public: Yes

Example:
[_faction get "unitRifle"] call SCRT_fnc_unit_getTiered;
*/

params [
    ["_tieredArray", [], [[]]],
	["_forceTier", -1, [0]]
];

if (_forceTier != -1) exitWith {
    _tieredArray select _forceTier
};

switch (true) do 
{
    case (tierWar >= 8): // if tier is 8 or higher, choose elite
    {
        _tieredArray select 2
    };
    case (tierWar >= 4): // if tier is 4 or higher, choose military
    {
        _tieredArray select 1
    };
    case (tierWar <= 3): // if tier is 3 or lower, choose militia
    {
        _tieredArray select 0
    };
};