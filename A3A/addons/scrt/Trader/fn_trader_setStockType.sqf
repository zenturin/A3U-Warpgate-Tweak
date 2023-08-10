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

private _templateParts = A3A_Reb_template splitString "_";

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

if (["JMSLLTE_empire_mod"] call _has_addon) then { // star wars empire
    _modsets pushBack "emp";
};

if (["uns_weap_w"] call _has_addon) then { // unsung
    _modsets pushBack "unsstore";
};

if (["vn_weapons"] call _has_addon) then { // sogpf
    _modsets pushBack "vn";
};

if (["UK3CB_Factions_Vehicles_SUV"] call _has_addon) then { // 3cbf
    _modsets pushBack "3cbf";
};

if (["IFA3_Core"] call _has_addon) then { // ifa
    _modsets pushBack "ww2mod";
};

if (["ww2_spe_assets_c_characters_germans_c"] call _has_addon) then { // spearhead
    _modsets pushBack "ww2cdlc";
};

// Multiple mods required (for now)

if ([["3AS_Characters", "442_equipment", "SWLB_clones", "JLTS_core", "CWDependencies"]] call _has_addon) then { // star wars clone wars
    _modsets pushBack "cw";
};

if ([["CUP_Creatures_People_Civil_Russia", "CUP_BaseConfigs", "CUP_AirVehicles_Core"]] call _has_addon) then { // cup
    _modsets pushBack "cup";
};

if ([["ffaa_data"]] call _has_addon) then { // ffaa
    _modsets pushBack "ffaastock";
};

if ([["ASZ_Weapons_A3"]] call _has_addon) then { // pedagne
    _modsets pushBack "italystock";
};

if ([["sfp_soldiers"]] call _has_addon) then { // sfp
    _modsets pushBack "spfstock";
};

if ([["mas_chi_army"]] call _has_addon) then { // pla
    _modsets pushBack "plastock";
};

if ([["bwa3_common"]] call _has_addon) then { // BWA3
    _modsets pushBack "bwastock";
};

if ([["UK3CB_BAF_Weapons", "UK3CB_BAF_Vehicles", "UK3CB_BAF_Units_Common", "UK3CB_BAF_Equipment"]] call _has_addon) then { // 3CBBAF
    _modsets pushBack "3cbbafstock";
};

if ([["rhsgref_main", "rhssaf_c_vehicles", "rhs_c_tanks", "RHS_US_A2Port_Armor"]] call _has_addon) then { // rhs
    _modsets pushBack "rhs";
};

if ([["OPTRE_Core", "OPTRE_FC_Core"]] call _has_addon) then { // optre
    _modsets pushBack "optre";
};

// Special cases
if ("coldWar" in A3A_factionEquipFlags) then { // 3cbf cold war
    _modsets = "3cbfcw";
};

if (_modsets isEqualTo []) then {_modsets pushBack "vanilla"}; // If it still hasn't got anything by this point, we can safely assume no supported mods are loaded.

if ("ws" in A3A_enabledDLC) then {_modsets pushBack "ws"}; // western sahara

[_traderX, _modsets] call HALs_store_fnc_addTrader;

// switch (true) do {
//     case ("EMP" isEqualTo (_templateParts select 0)): {
//         Info("Initializing EMP trader.");
//         [_traderX, ["emp"]] call HALs_store_fnc_addTrader;
//     };
//     case ("UNS" isEqualTo (_templateParts select 0)): {
//         Info("Initializing Unsung trader.");
//         [_traderX, ["unsstore"]] call HALs_store_fnc_addTrader;
//     };
//     case ("CW" isEqualTo (_templateParts select 0)): {
//         Info("Initializing CW trader.");
//         [_traderX, ["cw"]] call HALs_store_fnc_addTrader;
//     };
//     case ("CUP" isEqualTo (_templateParts select 0)): {
//         Info("Initializing CUP trader.");
//         [_traderX, ["cup"]] call HALs_store_fnc_addTrader;
//     };
//     case ("VN" isEqualTo (_templateParts select 0)): {
//         Info("Initializing VN trader.");
//         [_traderX, ["vn"]] call HALs_store_fnc_addTrader;
//     };
//     case ("coldWar" in A3A_factionEquipFlags): {
//         diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Using 3CBF CW trader stock.", servertime];
//         [_traderX, ["3cbfcw"]] call HALs_store_fnc_addTrader;
//     };
//     case ("RHS" isEqualTo (_templateParts select 0)): {
//         Info("Initializing RHS trader.");
//         [_traderX, ["rhs"]] call HALs_store_fnc_addTrader;
//     };
//     case ("3CBF" isEqualTo (_templateParts select 0)): {
//         Info("Initializing 3CBF trader.");
//         [_traderX, ["3cbf"]] call HALs_store_fnc_addTrader;
//     };
//     case ("Aegis" isEqualTo (_templateParts select 0)): {
//         Info("Initializing Aegis trader.");
//         [_traderX, ["aegis"]] call HALs_store_fnc_addTrader;
//     };
//     case ("ws" in A3A_enabledDLC): {
//         Info("Initializing WS trader.");
//         [_traderX, ["ws"]] call HALs_store_fnc_addTrader;
//     };
//     case ("OPTRE" isEqualTo (_templateParts select 0)): {
//         Info("Initializing OPTRE trader.");
//         [_traderX, ["optre"]] call HALs_store_fnc_addTrader;
//     };
//     case ("IFA" isEqualTo (_templateParts select 0)): {
//         Info("Initializing IFA trader.");
//         [_traderX, ["ww2mod"]] call HALs_store_fnc_addTrader;
//     };
//     case ("SPE" isEqualTo (_templateParts select 0)): {
//         Info("Initializing IFA trader.");
//         [_traderX, ["ww2cdlcmod"]] call HALs_store_fnc_addTrader;
//     };
//     default  {
//         Info("Initializing vanilla trader.");
//         [_traderX, ["vanilla"]] call HALs_store_fnc_addTrader;
//     };
// };

[] call SCRT_fnc_trader_removeUnlockedItemsFromStock;