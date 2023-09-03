/*
    Author:
    Silence

    Description:
    Handles removing forbidden items from arrays.

    Params:
	_arrays  <ARRAY> <DEFAULT: [lootBasicItem,lootNVG,lootItem,lootWeapon,lootAttachment,lootMagazine,lootGrenade,lootExplosive,lootBackpack,lootHelmet,lootVest,lootDevice,allRifles,allHandguns,allMachineGuns,allShotguns,allSMGs,allSniperRifles,allRocketLaunchers,allMissileLaunchers,allArmoredHeadgear,allVests,allArmoredVests]>

    Usage:
    [_arrays] call A3U_fnc_removeForbiddenItems;
*/

params [ 
	["_arrays", [lootBasicItem,lootNVG,lootItem,lootWeapon,lootAttachment,lootMagazine,lootGrenade,lootExplosive,lootBackpack,lootHelmet,lootVest,lootDevice,allRifles,allHandguns,allMachineGuns,allShotguns,allSMGs,allSniperRifles,allRocketLaunchers,allMissileLaunchers,allHeadgear,allArmoredHeadgear,allVests,allArmoredVests]] 
    // lord forgive me for this MONSTROSITY
];

if (missionNamespace getVariable ["A3U_loot_removedForbiddenItems", false] isEqualTo true) exitWith {};
 
private _start = diag_tickTime;

{ 
	private _array = _x; 
	{ 
		private _index = _array find _x; 
		if (_index isNotEqualTo -1 && {getNumber (configFile >> "A3U" >> "forbiddenItems" >> _x >> "appearInCrates") isEqualTo 0}) then {
            [format ["Removed %1 from %2", _x, _array]] call A3U_fnc_log;
			_array deleteAt (_index);
		};
	} forEach A3U_forbiddenItems;
} forEach _arrays;
 
["Currently removing forbidden items from a ton of arrays. This may take a while. (Time exponentially expands as more stuff needs to be iterated through!)"] call A3U_fnc_log; 
 
private _stop = diag_tickTime;
 
[format ["Forbidden items removal took approximately: %1 seconds.",round(_stop - _start)]] call A3U_fnc_log;

missionNamespace setVariable ["A3U_loot_removedForbiddenItems", true];

/*
["SMG_03C_TR_khaki","OPTRE_M45E","arifle_TRG21_F","arifle_Mk20_GL_F","OPTRE_M319","OPTRE_MA32BGL","arifle_MXC_Black_F","OPTRE_M12_SOC","OPTRE_MA37BGL","OPTRE_SRM77_S1","OPTRE_FC_T51_Repeater","OPTRE_FC_T51_Carbine","OPTRE_FC_Jackal_Shield_Needler","arifle_SDAR_F","SMG_03_khaki","SMG_03_hex","OPTRE_M7","OPTRE_M393S_DMR","OPTRE_FC_T50_SRS","OPTRE_FC_T31_NeedleRifle","arifle_Mk20_GL_plain_F","OPTRE_MA5C","OPTRE_M247H_Etilka","SMG_03C_TR_black","SMG_03C_khaki","SMG_03C_camo","SMG_03C_black","OPTRE_Commando_Red","OPTRE_M295_BMR_Snow","arifle_Mk20_plain_F","OPTRE_HMG38","OPTRE_M45","SMG_03_TR_khaki","OPTRE_M58S","OPTRE_MA32GL","OPTRE_BR45","SMG_03_TR_camo","OPTRE_M295_BMR_Woodland","OPTRE_M90A","arifle_MX_GL_Black_F","OPTRE_FC_T51B_Carbine","OPTRE_MA37","arifle_Mk20_F","OPTRE_SRM77_S2","OPTRE_MA32","OPTRE_FC_Jackal_Red_Shield","OPTRE_M73","OPTRE_M45ATAC","OPTRE_Commando_Snow","OPTRE_Commando_Police","OPTRE_SRS99C","arifle_MXC_F","arifle_MXM_Black_F","SMG_03_camo","arifle_MX_Black_F","OPTRE_BR37","SMG_03C_TR_camo","OPTRE_MA5B","OPTRE_FC_Jackal_Orange_Shield_Needler","SMG_03_TR_black","arifle_Katiba_C_F","OPTRE_MA5A","arifle_MX_GL_F","arifle_Mk20C_F","SMG_03C_TR_hex","arifle_Katiba_GL_F","OPTRE_MA5K","arifle_Katiba_F","OPTRE_MA37K","OPTRE_FC_T25_Rifle","SMG_03_TR_hex","OPTRE_M393_DMR","OPTRE_FC_T50_ConcussionRifle","OPTRE_MA5BGL","arifle_Mk20C_plain_F","arifle_TRG21_GL_F","OPTRE_FC_Jackal_Red_Shield_Needler","OPTRE_MA32B","OPTRE_FC_Needler","OPTRE_M45A","OPTRE_FC_T25J_Rifle","arifle_MX_F","OPTRE_BR55HB","arifle_TRG20_F","OPTRE_Commando_Tan","OPTRE_FC_T60_PulseCarbine","OPTRE_SRS99D","OPTRE_MA37GL","arifle_MXM_F","OPTRE_FC_T51J_Repeater","SMG_03C_hex","OPTRE_FC_Jackal_Orange_Shield","OPTRE_MA5AGL","OPTRE_BR55","OPTRE_MA5CGL","OPTRE_M392_DMR","SMG_03_black","OPTRE_M247","OPTRE_FC_Railgun","OPTRE_M295_BMR_Desert","OPTRE_MA37B","OPTRE_M319N","OPTRE_M295_BMR","OPTRE_M45TAC","OPTRE_Commando_Black","OPTRE_Commando","OPTRE_FC_Jackal_Shield"]
*/