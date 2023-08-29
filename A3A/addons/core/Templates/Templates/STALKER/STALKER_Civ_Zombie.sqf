//////////////////////////
//       Vehicles       //
//////////////////////////    

["vehiclesCivCar", [
    "CUP_O_Hilux_unarmed_TK_CIV", 0.5
    , "CUP_C_LR_Transport_CTK", 0.5
    , "CUP_C_Bus_City_TKCIV", 0.2
    , "CUP_C_SUV_TK", 0.3
    , "CUP_C_Datsun_4seat", 0.5
    , "CUP_C_Golf4_black_Civ", 0.5
    , "CUP_C_Golf4_random_Civ", 0.5
    , "CUP_C_Octavia_CIV", 0.5
    , "CUP_C_Pickup_unarmed_CIV", 0.5
    ]] call _fnc_saveToTemplate;

["vehiclesCivIndustrial", [
    "CUP_C_V3S_Open_TKC", 0.3
    , "CUP_C_V3S_Covered_TKC", 0.2
    , "CUP_C_Ural_Civ_01", 0.2
]] call _fnc_saveToTemplate;

["vehiclesCivBoat", [
    "CUP_C_Fishing_Boat_Chernarus", 0.2
    , "CUP_C_PBX_CIV", 0.7
    , "CUP_C_Zodiac_CIV", 0.7
]] call _fnc_saveToTemplate;

["vehiclesCivRepair", [
    "C_Truck_02_box_F", 0.1
    , "C_Offroad_01_repair_F", 0.1
]] call _fnc_saveToTemplate;

["vehiclesCivMedical", [
    "CUP_C_S1203_Ambulance_CIV", 0.1
]] call _fnc_saveToTemplate;

["vehiclesCivFuel", [
    "C_Truck_02_fuel_F", 0.1
    , "C_Van_01_fuel_F", 0.1
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["attributeCivNonHuman", true] call _fnc_saveToTemplate; // due to emissions in "the zone", all civs would be zombies

["faces", ["WBK_ZombieFace_1","WBK_ZombieFace_2","WBK_ZombieFace_3","WBK_ZombieFace_4","WBK_ZombieFace_5","WBK_ZombieFace_6",
"WBK_ZombieFace_blood_1","WBK_ZombieFace_blood_2","WBK_ZombieFace_blood_3","WBK_ZombieFace_blood_4","WBK_DosHead_Corrupted"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
    "SCE_Bandit_Rags_1_1",
    "SCE_Bandit_Rags_1_2",
    "SE_Leather_Jacket_Loner_Green",
    "SE_Leather_Jacket_Loner_Tan"
];

private _civUniformsAI = [
    "SE_Scavenger_Coat",
    "SCE_Bandit_Rags_2_1",
    "SCE_Bandit_Rags_2_2",
    "SCE_Bandit_Rags_2_3",
    "CUP_U_O_RUS_Gorka_Green",
    "CUP_U_C_Labcoat_01",
    "CUP_U_C_Labcoat_03"
];

private _pressUniforms = ["U_C_Journalist"];

private _workerUniforms = ["CUP_U_C_Worker_03"];

["uniforms", _civUniforms + _pressUniforms + _workerUniforms] call _fnc_saveToTemplate;          //Uniforms given to the Arsenal, Allowed for Undercover and given to Rebel Ai that go Undercover

_civHats = [];

["headgear", _civHats] call _fnc_saveToTemplate;            //Headgear given to Normal Civs, Workers, Undercover Rebels.

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniformsAI];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", []];
_loadoutData set ["pressHelmets", []];
_loadoutData set ["workerHelmets", ["H_Cap_blk"]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];

private _manTemplate = {
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    ["workerHelmets"] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate, [["baseClass", ["Zombie_Special_OPFOR_Leaper_1"], false]]], // to-do: allow press to spawn but make them special infected
    ["Worker", _workerTemplate, [["baseClass", ["Zombie_O_Walker_Civ"], false]]],
    ["Man", _manTemplate, [["baseClass", ["Zombie_O_Walker_Civ", "Zombie_O_Shambler_Civ"], false]]]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;