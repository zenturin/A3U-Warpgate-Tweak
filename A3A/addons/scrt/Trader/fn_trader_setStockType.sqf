//	Author: Socrates/Silence
// 
//	Description:
//	Sets trader stock based on current mods loaded.
//  09/08/2023: Now has the ability to detect multiple mods and load them all into the trader.
//
//	Returns:
//	Nothing.
//
// 	How to use: 
// 	[_traderX] call SCRT_fnc_trader_setStockType;
#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_traderX"];

private _has_addon = {
    params [["_class", ""]];
    if (_class isEqualTo "") exitWith {false};

    if (_class isEqualType []) exitWith {
        {
            if (isClass (configFile >> "cfgPatches" >> _x)) then {diag_log format ["cfgPatches class %1 does exist.", _x]; true} else {diag_log format ["cfgPatches class %1 does not exist.", _x]; false};
        } forEach _class;
    };

    if (isClass (configFile >> "cfgPatches" >> _class)) then {
        true
    } else {
        false
    };
};

private _modsets = [];

private _cfg = (configfile >> "A3U" >> "traderMods") call BIS_fnc_getCfgSubClasses;

{
    private _addons = getArray (configFile >> "A3U" >> "traderMods" >> _x >> "addons");
    private _prefix = getText (configFile >> "A3U" >> "traderMods" >> _x >> "prefix");

    if ([_addons] call _has_addon) then {
        _modsets pushBack _x;
        [format ["Added %1 to _modsets list.", _x]] call A3U_fnc_log;
    };
} forEach _cfg;

// Special cases
if (_modsets isEqualTo []) then {_modsets pushBack "vanilla"}; // If it still hasn't got anything by this point, we can safely assume no supported mods are loaded.

if ("ws" in A3A_enabledDLC) then {_modsets pushBack "ws"}; // western sahara

if ("coldWar" in A3A_factionEquipFlags) then { // 3cbf cold war
    _modsets = "3cbfcw";
};

[_traderX, _modsets] call HALs_store_fnc_addTrader;

[] call SCRT_fnc_trader_removeUnlockedItemsFromStock;