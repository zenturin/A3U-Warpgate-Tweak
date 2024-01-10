//////////////////////////
//   Side Information   //
//////////////////////////

#include "..\..\..\script_component.hpp"

["name", "Turkish Land Forces"] call _fnc_saveToTemplate; 						
["spawnMarkerName", "Turkish Support Corridor"] call _fnc_saveToTemplate; 			

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate; 						
["flagTexture", "\TMT\TMT_Core\Data\flag_Turkish_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_Turkish"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["B_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["tmt_landrover_w", "CUP_B_nM1025_Unarmed_USA_WDL", "CUP_B_nM1038_4s_USA_WDL"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["TMT_Cobra_RCWS_W", "CUP_B_nM1025_M240_USA_WDL", "CUP_B_nM1025_SOV_M2_USA_WDL"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["TMT_Unimog_Transport_W"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["CUP_I_T810_Unarmed_LDF"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["TMT_Unimog_Ammo_W"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["CUP_I_T810_Repair_LDF"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["CUP_I_T810_Refuel_LDF"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["tmt_landrover_w_amb", "TMT_ACV300_W_Amb"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["TMT_ACV300_W_M2", "TMT_Ejder_RCWS_GEN"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["TMT_KirpiII_MRAP_W", "TMT_ACV300_W_M242", "TMT_ACV300_W_M2", "TMT_M113_W_M2"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["TMT_KirpiII_MRAP_W", "TMT_ACV300_W_M242", "TMT_M113_W_M2"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["TMT_ACV300_W_M242", "TMT_M113_W_M2"]] call _fnc_saveToTemplate;
["vehiclesLightTanks",  ["TMT_M60A3_W"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["TMT_LEO2A4_w", "TMT_Leopard2_NG_W"]] call _fnc_saveToTemplate;
["vehiclesAA", ["TMT_Landrover_w_AA"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["CUP_B_MK10_GB", "CUP_B_RHIB_USMC"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["CUP_B_RHIB2Turret_USMC"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", ["TMT_M113_W_M2"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["CUP_B_A10_DYN_USA", "CUP_B_CESSNA_T41_ARMED_USA"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["CUP_B_F35B_USMC"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["TMT_C130"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["CUP_B_SA330_Puma_HC2_BAF", "CUP_B_UH1D_GER_KSK_Des"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["TMT_T70", "TMT_CH47F"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["CUP_B_AH6J_USA", "CUP_B_AH6M_USA"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["TMT_AH1W", "TMT_AH1W_HIRSS"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["TMT_T155_W"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
    ["TMT_T155_W",["32Rnd_155mm_Mo_shells"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["TMT_BayraktarTB2"]] call _fnc_saveToTemplate;
["uavsPortable", ["B_UAV_01_F"]] call _fnc_saveToTemplate;

["vehiclesMilitiaLightArmed", ["TMT_Cobra_RCWS_GEN"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["TMT_Unimog_Transport_W"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["tmt_landrover_w"]] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["TMT_Ejder_RCWS_GEN", "TMT_Kirpi_MRAP_GEN"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["TMT_Cobra_RCWS_PSO", "TMT_Ejder_RCWS_PSO", "TMT_Kirpi_MRAP_PSO"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_M2StaticMG_US"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_B_TOW2_TriPod_US"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_B_CUP_Stinger_AA_pod_US"]] call _fnc_saveToTemplate;
["staticMortars", ["CUP_B_M252_US"]] call _fnc_saveToTemplate;
["staticHowitzers", [""]] call _fnc_saveToTemplate;

["vehicleRadar", "B_Radar_System_01_F"] call _fnc_saveToTemplate;
["vehicleSam", "B_SAM_System_03_F"] call _fnc_saveToTemplate;

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["minefieldAT", ["CUP_Mine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", ["WhiteHead_01","WhiteHead_02","WhiteHead_03","PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"]] call _fnc_saveToTemplate;
["voices", ["CUP_D_Male01_TK","CUP_D_Male02_TK","CUP_D_Male03_TK","CUP_D_Male04_TK","CUP_D_Male05_TK"]] call _fnc_saveToTemplate; // idk what voices to use, so takistani? feel free to correct it

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["missileATLaunchers", [
    ["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M"], [], ""]
]];
_loadoutData set ["AALaunchers", [
    ["CUP_launch_FIM92Stinger", "", "", "", [""], [], ""]
]];
_loadoutData set ["ATLaunchers", [
    ["CUP_launch_MAAWS", "", "", "CUP_optic_MAAWS_Scope", ["CUP_MAAWS_HEDP_M", "CUP_MAAWS_HEAT_M"], [], ""]
]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["CUP_HandGrenade_M67"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["NVGoggles_OPFOR"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["tmt_specialforces_combat_uniform"]];
_loadoutData set ["traitorVests", ["CUP_V_B_RRV_Officer_CB", "CUP_V_CPC_light_rngr"]];
_loadoutData set ["traitorHats", ["tmt_Booniehat_sof_HS"]];

_loadoutData set ["officerUniforms", ["tmt_specialforces_combat_sfshell_uniform"]];
_loadoutData set ["officerVests", ["CUP_V_B_RRV_Officer_CB", "TACTEC_medium"]];
_loadoutData set ["officerHats", ["TMT_Beret_Maroon_officer"]];

_loadoutData set ["uniforms", []];
_loadoutData set ["slUniforms", []];
_loadoutData set ["mgVests", []];
_loadoutData set ["medVests", []];
_loadoutData set ["slVests", []];
_loadoutData set ["sniVests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["engVests", []];
_loadoutData set ["vests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["longRangeRadios", ["CUP_B_Kombat_Radio_Olive"]];
_loadoutData set ["atBackpacks", []];
_loadoutData set ["slBackpacks", []];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["TMT_Beret_black"]];
_loadoutData set ["sniHats", ["TMT_Beret_black"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
	_slItems append ["ACE_microDAGR", "ACE_DAGR"];
	_eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
	_mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["uniforms", ["tmt_specialforces_combat_uniform_gloves", "tmt_specialforces_combat_uniform_gloves_kneepad", "tmt_specialforces_combat_kn_sfshell_uniform"]];
_sfLoadoutData set ["vests", ["TACTEC", "TACTEC_full", "TACTEC_medium"]];
_sfLoadoutData set ["mgVests", ["TMT_Gendarme_WarriorAssaultVest_MG"]];
_sfLoadoutData set ["medVests", ["TMT_Gendarme_WarriorAssaultVest_Medic_Belt"]];
_sfLoadoutData set ["glVests", ["TMT_Gendarme_WarriorAssaultVest_556_Sling"]];
_sfLoadoutData set ["backpacks", ["tmt_backpack_compact_ozkk", "tmt_backpack_compact_ozkk_base"]];
_sfLoadoutData set ["slBackpacks", ["tmt_patrolpack_radio"]];
_sfLoadoutData set ["atBackpacks", ["tmt_patrolpack"]];
_sfLoadoutData set ["helmets", ["tmt_garanti_helmet_cut_cover_peltor_sof", "tmt_garanti_helmet_cut_cover_sof"]];
_sfLoadoutData set ["slHat", ["tmt_garanti_helmet_cut_cover_peltor_IR_full_sof"]];
_sfLoadoutData set ["sniHats", ["tmt_garanti_helmet_cut_cover_rac_IR_full_sof"]];
_sfLoadoutData set ["NVGs", ["TMT_GPNVG"]];
_sfLoadoutData set ["binoculars", ["CUP_Vector21Nite"]];

_sfLoadoutData set ["slRifles", [
    ["TMT_KCR556_TAN_11_Grip", "", "tmt_anpeq16black_m952", "CUP_optic_ACOG_TA01B_Black", ["TMT_30Rnd_Lancer_Mag"], [], ""],
    ["TMT_KCR556_TAN_11_KGL40", "", "tmt_anpeq15black_m952", "CUP_optic_CompM2_Black", ["TMT_30Rnd_Lancer_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_SmokeRed_Grenade_shell", "UGL_FlareRed_F"], ""],
    ["TMT_MPT55_grip", "", "tmt_anpeq15black_m952", "CUP_optic_G33_HWS_BLK", ["TMT_30Rnd_Lancer_Mag"], [], ""],
    ["TMT_MPT55_K", "", "tmt_anpeq15black_m952", "CUP_optic_Eotech553_Black", ["TMT_30Rnd_Lancer_Mag"], [], ""],
    ["TMT_M4_Carbine_Gasblock_Grip", "", "CUP_acc_ANPEQ_15_Top_Flashlight_Black_L", "CUP_optic_Eotech553_Black", ["TMT_30Rnd_STANAG_Mag"], [], ""]
]];
_sfLoadoutData set ["rifles", [  
    ["TMT_HK416_14_5_Black", "", "tmt_anpeq15black_top", "TMT_EOTechxps3_b", ["TMT_30Rnd_STANAG_Mag"], [], ""],
    ["TMT_KCR556_BLK_11", "", "", "CUP_optic_AC11704_Black", ["TMT_30Rnd_STANAG_Mag"], [], ""],
    ["TMT_M4A1_Grip", "", "", "CUP_optic_MicroT1", ["TMT_30Rnd_STANAG_Mag"], [], ""],
    ["TMT_SIG516_Grip", "", "", "CUP_optic_Elcan_SpecterDR_black", ["TMT_30Rnd_STANAG_PULL_Mag"], [], ""]
]];
_sfLoadoutData set ["carbines", [  
    ["TMT_MPT55_K", "", "", "CUP_optic_Eotech553_Black", ["TMT_30Rnd_Lancer_Mag"], [], ""],
    ["TMT_MPT55_K_grip", "", "", "CUP_optic_Eotech553_Black", ["TMT_30Rnd_Lancer_Mag"], [], ""],
    ["TMT_KCR556_BLK_7_5", "", "", "TMT_EOTechxps3_b", ["TMT_30Rnd_Lancer_Mag"], [], ""],
    ["TMT_KCR556_BLK_7_5_Grip", "", "", "TMT_EOTechxps3_b", ["TMT_30Rnd_Lancer_Mag"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["TMT_KCR556_BLK_11_KGL40", "", "CUP_acc_ANPEQ_2_Black_Top", "CUP_optic_ACOG2", ["TMT_30Rnd_Lancer_Mag"], ["1Rnd_HE_Grenade_shell", "UGL_FlareGreen_F", "1Rnd_SmokeGreen_Grenade_shell"], ""],
    ["TMT_HK416_M320_14_5_Black", "", "CUP_acc_ANPEQ_2_Black_Top", "CUP_optic_Elcan_SpecterDR_black", ["TMT_30Rnd_Lancer_Mag"], ["1Rnd_HE_Grenade_shell", "UGL_FlareGreen_F", "1Rnd_SmokeGreen_Grenade_shell"], ""],
    ["TMT_SIG516_M320", "", "tmt_anpeq15black_m952", "CUP_optic_Elcan_SpecterDR_black", ["TMT_30Rnd_Lancer_Mag"], ["1Rnd_HE_Grenade_shell", "UGL_FlareGreen_F", "1Rnd_SmokeGreen_Grenade_shell"], ""]
]];
_sfLoadoutData set ["SMGs", [
    ["TMT_SAR109", "", "", "CUP_optic_AC11704_Black", ["TMT_30Rnd_9x19_Mag_SAR109"], [], ""],
    ["TMT_SAR109_Standart", "", "", "TMT_EOTechxps3_b", ["TMT_30Rnd_9x19_Mag_SAR109"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
    ["TMT_M249_Para", "", "", "CUP_optic_ElcanM145", ["tmt_200rnd_556x45_M_SAW_Standart"], [], ""],
    ["TMT_M249E2_Squant", "", "", "TMT_EOTech552_b", ["tmt_200rnd_556x45_M_SAW_Standart"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["TMT_M110_Black", "", "tmt_anpeq16black_top", "CUP_optic_SB_11_4x20_PM", ["TMT_20Rnd_762x51_B_M110"], [], "TMT_Bipod_blk"],
    ["TMT_M110_TAN", "", "tmt_anpeq16black_top", "TMT_3EOS_KESKIN_B", ["TMT_20Rnd_762x51_B_M110"], [], "TMT_Bipod_blk"]
]];
_sfLoadoutData set ["sniperRifles", [   
    ["TMT_BORA_12_Black_Silenced", "", "", "CUP_optic_SB_11_4x20_PM", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"],
    ["TMT_BORA_12_Black_Silenced", "", "", "TMT_3EOS_KESKIN_B", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"],
    ["TMT_BORA_12_Tan_Silenced", "", "", "CUP_optic_SB_11_4x20_PM", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"],
    ["TMT_BORA_12_Tan_Silenced", "", "", "TMT_3EOS_KESKIN_B", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"],
    ["TMT_BORA_12_Tan_Silenced_Ghillie", "", "", "CUP_optic_SB_11_4x20_PM", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"],
    ["TMT_BORA_12_Tan_Silenced_Ghillie", "", "", "TMT_3EOS_KESKIN_B", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"]
]];
_sfLoadoutData set ["sidearms", [
    ["TMT_Canik_TP9EliteCombat_tan", "", "acc_flashlight_pistol", "", ["TMT_16Rnd_9x19_Mag"], [], ""],
    ["TMT_Canik_TP9EliteCombat_tan_mix", "acc_flashlight_pistol", "", "", ["TMT_16Rnd_9x19_Mag"], [], ""],
    ["TMT_Canik_TP9EliteCombat_blk", "", "acc_flashlight_pistol", "", ["TMT_16Rnd_9x19_Mag"], [], ""],
    ["TMT_Canik_TP9SFX_blk", "", "acc_flashlight_pistol", "", ["TMT_16Rnd_9x19_Mag"], [], ""],
    ["TMT_Zigana_PX9", "", "acc_flashlight_pistol", "", ["TMT_16Rnd_9x19_Mag"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["uniforms", ["tmt_digital_combat_uniform_gloves_kneepad", "tmt_digital_combat_uniform_gloves"]];
_eliteLoadoutData set ["slUniform", ["tmt_desert_combat_uniform_gloves_kneepad"]];
_eliteLoadoutData set ["vests", ["TMT_TAN_WarriorAssaultVest_556", "TMT_TAN_WarriorAssaultVest_556_Belt"]];
_eliteLoadoutData set ["mgVests", ["TMT_TAN_WarriorAssaultVest_MG", "TMT_TAN_WarriorAssaultVest_MG_belt"]];
_eliteLoadoutData set ["medVests", ["TMT_TAN_WarriorAssaultVest_Medic", "TMT_TAN_WarriorAssaultVest_Medic_Belt"]];
_eliteLoadoutData set ["slVests", ["TMT_TAN_WarriorAssaultVest_radio_belt", "TMT_TAN_WarriorAssaultVest_556_Belt"]];
_eliteLoadoutData set ["glVests", ["tmt_file_assault_vest_gl"]];
_eliteLoadoutData set ["engVests", ["TMT_TAN_WarriorAssaultVest_MG"]];
_eliteLoadoutData set ["backpacks", ["tmt_backpack_compact_digital", "tmt_tacticalpack_desert"]];
_eliteLoadoutData set ["slBackpacks", ["tmt_tacticalpack_mat_desert", "tmt_tacticalpack_radio_desert"]];
_eliteLoadoutData set ["atBackpacks", ["tmt_tacticalpack_desert"]];
_eliteLoadoutData set ["helmets", ["tmt_garanti_helmet_midcut_cover_jgk", "tmt_garanti_helmet_midcut_fullcover_tan"]];
_eliteLoadoutData set ["sniHats", ["tmt_garanti_helmet_midcut_cover_IR_jgk"]];
_eliteLoadoutData set ["binoculars", ["CUP_LRTV"]];

_eliteLoadoutData set ["slRifles", [
    ["TMT_MPT76", "", "", "CUP_optic_Elcan", ["TMT_20Rnd_762x51_B_mpt76"], [], ""],
    ["TMT_MPT76_Handle_2", "", "", "CUP_optic_Elcan", ["TMT_20Rnd_762x51_B_mpt76"], [], ""],
    ["TMT_KCR556_BLK_14_5_Grip", "", "CUP_acc_ANPEQ_15_Top_Flashlight_Black_L", "CUP_optic_SB_11_4x20_PM", ["TMT_30Rnd_Lancer_Mag"], [], ""]
]];
_eliteLoadoutData set ["rifles", [
    ["TMT_MPT76", "", "", "TMT_EOTech552_b_magnifier_open", ["TMT_20Rnd_762x51_B_mpt76"], [], ""],
    ["TMT_MPT76_2", "", "", "TMT_EOTech552_b", ["TMT_20Rnd_762x51_B_mpt76"], [], ""],
    ["TMT_MPT55_K_grip", "", "", "CUP_optic_ACOG_TA01B_Black", ["TMT_30Rnd_Lancer_Mag"], [], ""],
    ["TMT_SAR308_Grip", "", "", "CUP_optic_AC11704_Black", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""],
    ["TMT_HK416_11_Black", "", "", "CUP_optic_Eotech553_Black", ["TMT_30Rnd_Lancer_Mag"], [], ""],
    ["TMT_SAR308", "", "", "", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
    ["TMT_M4A1_Grip", "", "", "", ["TMT_30Rnd_STANAG_Mag"], [], ""],
    ["TMT_M4A1_V2", "", "", "", ["TMT_30Rnd_STANAG_Mag"], [], ""],
    ["TMT_MPT55_K_grip", "", "", "TMT_EOTechxps3_b", ["TMT_30Rnd_Lancer_Mag"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["TMT_MPT55_K_AK40", "", "", "TMT_EOTechxps3_b_magnifier_open", ["TMT_30Rnd_Lancer_Mag"], ["1Rnd_HE_Grenade_shell", "UGL_FlareGreen_F", "1Rnd_Smoke_Grenade_shell"], ""],
    ["TMT_MPT76_AK40", "", "", "TMT_EOTechxps3_b_magnifier_open", ["TMT_20Rnd_762x51_B_mpt76"], ["1Rnd_HE_Grenade_shell", "UGL_FlareGreen_F", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
    ["TMT_SAR109_Standart", "", "", "", ["TMT_30Rnd_9x19_Mag_SAR109"], [], ""],
    ["CUP_smg_MP5A5_Rail_AFG", "", "", "", ["CUP_30Rnd_9x19_MP5"], [], ""]
]];
_eliteLoadoutData set ["machineGuns", [
    ["TMT_PKM", "", "", "", ["150Rnd_762x54_Box"], [], ""],
    ["TMT_M249_Para", "", "", "", ["tmt_200rnd_556x45_M_SAW_Standart"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["TMT_KNT76_TAN_2", "", "", "CUP_optic_Elcan_SpecterDR_black", ["TMT_20Rnd_762x51_B_mpt76"], [], "CUP_bipod_Harris_1A2_L_BLK"],
    ["TMT_MPT76_Gripod", "", "", "TMT_3EOS_KESKIN_B", ["TMT_20Rnd_762x51_B_mpt76"], [], ""],
    ["TMT_M110_Black", "", "", "CUP_optic_ACOG2", ["TMT_20Rnd_762x51_B_M110"], [], "TMT_Bipod_blk"]
]];
_eliteLoadoutData set ["sniperRifles", [
    ["TMT_BORA_12_Black", "", "", "CUP_optic_SB_11_4x20_PM", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"],
    ["TMT_BORA_12_Black_Ghillie", "", "", "CUP_optic_SB_11_4x20_PM", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"],
    ["TMT_BORA_12_Tan", "", "", "CUP_optic_LeupoldMk4_20x40_LRT", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"],
    ["TMT_BORA_12_Tan_Ghillie", "", "", "CUP_optic_LeupoldMk4_20x40_LRT", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"],
    ["TMT_Accuracy", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", ["TMT_5Rnd_338lm_B_accuracy"], [], ""],
    ["TMT_Accuracy_Ghillie", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", ["TMT_5Rnd_338lm_B_accuracy"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
    ["TMT_Canik_TP9EliteSCombat_blk", "", "", "", ["TMT_16Rnd_9x19_Mag"], [], ""],
    ["TMT_Canik_TP9SFX_blk", "", "", "", ["TMT_16Rnd_9x19_Mag"], [], ""],
    ["TMT_Zigana_PX9", "", "", "", ["TMT_16Rnd_9x19_Mag"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["uniforms", ["tmt_kkk_combat_uniform", "tmt_kkk_green_combat_uniform_gloves"]];
_militaryLoadoutData set ["slUniform", ["tmt_kkk_combat_kn_sfshell_uniform"]];
_militaryLoadoutData set ["vests", ["TMT_WarriorAssaultVest_556_Belt", "TMT_WarriorAssaultVest_556"]];
_militaryLoadoutData set ["mgVests", ["TMT_WarriorAssaultVest_MG"]];
_militaryLoadoutData set ["medVests", ["TMT_WarriorAssaultVest_Medic", "TMT_WarriorAssaultVest_Medic_Belt"]];
_militaryLoadoutData set ["slVests", ["TMT_WarriorAssaultVest_556_Sling_belt"]];
_militaryLoadoutData set ["glVests", ["tmt_file_assault_vest_gl"]];
_militaryLoadoutData set ["engVests", ["TMT_WarriorAssaultVest_radio_belt"]];
_militaryLoadoutData set ["backpacks", ["tmt_alicepack", "tmt_alicepack_full_radio"]];
_militaryLoadoutData set ["slBackpacks", ["tmt_alicepack_radio"]];
_militaryLoadoutData set ["atBackpacks", ["tmt_alicepack_full_rpg"]];
_militaryLoadoutData set ["helmets", ["tmt_8ABMK_helmet", "tmt_8abmk_helmet_tactical"]];
_militaryLoadoutData set ["sniHats", ["tmt_garanti_helmet_cut_fullcover_peltor_IR_kkk"]];
_militaryLoadoutData set ["binoculars", ["CUP_LRTV"]];

_militaryLoadoutData set ["slRifles", [
    ["TMT_MPT76", "", "", "CUP_optic_Elcan_SpecterDR_black", ["TMT_20Rnd_762x51_B_mpt76"], [], ""],
    ["TMT_MPT76_Handle_2", "", "", "CUP_optic_HoloBlack", ["TMT_20Rnd_762x51_B_mpt76"], [], ""],
    ["TMT_KCR556_BLK_14_5_Grip", "", "CUP_acc_ANPEQ_15_Top_Flashlight_Black_L", "CUP_optic_MicroT1", ["TMT_30Rnd_Lancer_Mag"], [], ""]
]];
_militaryLoadoutData set ["rifles", [
    ["TMT_MPT76", "", "", "TMT_EOTech552_b_magnifier_open", ["TMT_20Rnd_762x51_B_mpt76"], [], ""],
    ["TMT_MPT76_2", "", "", "TMT_EOTech552_b", ["TMT_20Rnd_762x51_B_mpt76"], [], ""],
    ["TMT_HK416_11_Black", "", "", "CUP_optic_Eotech553_Black", ["TMT_30Rnd_Lancer_Mag"], [], ""],
    ["TMT_SAR308", "", "", "", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
    ["TMT_M4A1_Grip", "", "", "", ["TMT_30Rnd_STANAG_Mag"], [], ""],
    ["TMT_M4A1_V2", "", "", "", ["TMT_30Rnd_STANAG_Mag"], [], ""],
    ["TMT_MPT55_K_grip", "", "", "TMT_EOTechxps3_b", ["TMT_30Rnd_Lancer_Mag"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["TMT_MPT55_K_AK40", "", "", "TMT_EOTechxps3_b_magnifier_open", ["TMT_30Rnd_Lancer_Mag"], ["1Rnd_HE_Grenade_shell", "UGL_FlareGreen_F", "1Rnd_Smoke_Grenade_shell"], ""],
    ["TMT_MPT76_AK40", "", "", "TMT_EOTechxps3_b_magnifier_open", ["TMT_20Rnd_762x51_B_mpt76"], ["1Rnd_HE_Grenade_shell", "UGL_FlareGreen_F", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
    ["TMT_SAR109_Standart", "", "", "", ["TMT_30Rnd_9x19_Mag_SAR109"], [], ""],
    ["CUP_smg_MP5A5_Rail_AFG", "", "", "", ["CUP_30Rnd_9x19_MP5"], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
    ["TMT_PKM", "", "", "", ["150Rnd_762x54_Box"], [], ""],
    ["TMT_M249_Para", "", "", "", ["tmt_200rnd_556x45_M_SAW_Standart"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["TMT_KNT76_TAN_2", "", "", "CUP_optic_Elcan_SpecterDR_black", ["TMT_20Rnd_762x51_B_mpt76"], [], "CUP_bipod_Harris_1A2_L_BLK"],
    ["TMT_MPT76_Gripod", "", "", "TMT_3EOS_KESKIN_B", ["TMT_20Rnd_762x51_B_mpt76"], [], ""],
    ["TMT_M110_Black", "", "", "CUP_optic_ACOG2", ["TMT_20Rnd_762x51_B_M110"], [], "TMT_Bipod_blk"]
]];
_militaryLoadoutData set ["sniperRifles", [
    ["TMT_BORA_12_Black", "", "", "CUP_optic_SB_11_4x20_PM", ["TMT_10Rnd_762x59_B_jng90"], [], "TMT_Bipod_blk"],
    ["TMT_Accuracy", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", ["TMT_5Rnd_338lm_B_accuracy"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
    ["TMT_Canik_TP9SFX_blk", "", "", "", ["TMT_16Rnd_9x19_Mag"], [], ""],
    ["TMT_Zigana_PX9", "", "", "", ["TMT_16Rnd_9x19_Mag"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["uniforms", ["tmt_police_combat_tshirt_gl_kneepad_uniform", "tmt_police_combat_sfshell_uniform"]];
_policeLoadoutData set ["vests", ["tmt_balistic_vest_backpack_jgk", "tmt_balistic_vest_carrier_jgk"]];
_policeLoadoutData set ["helmets", ["TMT_Beret_green_police", "tmt_MilCap_police"]];

_policeLoadoutData set ["SMGs", [
    ["TMT_SAR109", "", "", "", ["TMT_30Rnd_9x19_Mag_SAR109"], [], ""],
    ["CUP_smg_MP5A5_Rail_AFG", "", "", "", ["CUP_30Rnd_9x19_MP5"], [], ""]
]];
_policeLoadoutData set ["sidearms", [
    ["TMT_Zigana_PX9", "", "", "", ["TMT_16Rnd_9x19_Mag"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData set ["uniforms", ["tmt_police_combat_uniform", "tmt_police_combat_uniform_gloves_kneepad"]];
_militiaLoadoutData set ["vests", ["TACTEC_light", "tmt_file_assault_vest_desert", "tmt_balistic_vest_carrier_jgk"]];
_militiaLoadoutData set ["sniVests", ["tmt_balistic_vest_carrier_jgk"]];
_militiaLoadoutData set ["backpacks", ["tmt_backpack_compact_tan_base"]];
_militiaLoadoutData set ["slBackpacks", ["tmt_tacticalpack_mat_tan"]];
_militiaLoadoutData set ["atBackpacks", ["tmt_tacticalpack_tan"]];
_militiaLoadoutData set ["helmets", ["tmt_MilCap_police", "tmt_cap_jgk", "tmt_booniehat_police"]];
_militiaLoadoutData set ["sniHats", ["tmt_MilCap_police_headset", "tmt_Booniehat_police_HS"]];

_militiaLoadoutData set ["rifles", [
    ["TMT_SAR56_tan", "", "", "", ["TMT_30Rnd_SARSILMAZ_Mag_TAN"], [], ""],
    ["TMT_SAR56_tan_AFG", "", "", "", ["TMT_30Rnd_SARSILMAZ_Mag_TAN"], [], ""],
    ["TMT_M4_Carbine_Gasblock_Afg_moe", "", "", "", ["TMT_30Rnd_STANAG_Mag"], [], ""],
    ["TMT_G3A3", "", "", "", ["TMT_20Rnd_762x51_B_G3"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["TMT_SAR223", "", "", "", ["TMT_30Rnd_STANAG_Mag"], [], ""],
    ["TMT_HK416_11_RAL", "", "", "", ["TMT_30Rnd_Lancer_Mag"], [], ""],
    ["TMT_HK33_RIFLE_STOCK_R", "", "", "CUP_optic_AC11704_Black", ["TMT_30Rnd_HK33_Mag"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["TMT_HK33_RIFLE_STOCK_GL", "", "", "CUP_optic_MicroT1", ["TMT_30Rnd_HK33_Mag"], ["1Rnd_HE_Grenade_shell", "UGL_FlareGreen_F", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["SMGs", [
    ["TMT_SAR109_Standart", "", "", "", ["TMT_30Rnd_9x19_Mag_SAR109"], [], ""],
    ["CUP_smg_MP5A5_Rail_AFG", "", "", "", ["CUP_30Rnd_9x19_MP5"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["TMT_PKM", "", "", "", ["150Rnd_762x54_Box"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["TMT_KNT76_TAN_2", "", "", "CUP_optic_Elcan_SpecterDR_black", ["TMT_20Rnd_762x51_B_mpt76"], [], "CUP_bipod_Harris_1A2_L_BLK"]
]];
_militiaLoadoutData set ["sidearms", [
    ["CUP_hgun_Glock17_blk", "", "", "", ["CUP_17Rnd_9x19_glock17"], [], ""],
    ["TMT_Zigana_PX9", "", "", "", ["TMT_16Rnd_9x19_Mag"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", ["tmt_kkk_combat_uniform"]];
_crewLoadoutData set ["vests", ["TMT_WarriorAssaultVest_belt", "TMT_WarriorAssaultVest_radio"]];
_crewLoadoutData set ["helmets", ["H_HelmetCrew_I"]];
_crewLoadoutData set ["carbines", [
    ["TMT_HK33_RIFLE_STOCK", "", "", "", ["TMT_30Rnd_HK33_Mag"], [], ""]
]];	

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["tmt_coveralls_pilot_kkk_base"]];
_pilotLoadoutData set ["vests", ["V_TacVest_oli", "TMT_NAVY_WarriorAssaultVest_radio", "TMT_WarriorAssaultVest_radio_belt"]];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetHeli_B"]];
_pilotLoadoutData set ["carbines", [
    ["TMT_SAR109_Grip", "", "", "", ["TMT_30Rnd_9x19_Mag_SAR109"], [], ""]
]];

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _squadLeaderTemplate = {
    ["slHat"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    [["slVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;
    [["slBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["antiTankGrenades", 1] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["antiTankGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    [["medVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["carbines"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["grenadeLaunchers"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    [["glSidearms", "sidearms"] call _fnc_fallback] call _fnc_setHandgun;
    ["handgun", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["antiTankGrenades", 3] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    [["engVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    [["engVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["carbines"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["lightATLaunchers"] call _fnc_setLauncher;
    ["launcher", 1] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["antiTankGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["missileATLaunchers", "ATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 2] call _fnc_addMagazines;
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["antiTankGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    ["launcher", 2] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    [["mgVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    [["sniVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    [["sniVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["sniperRifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["SMGs"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["glasses"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout of the pilots
["other", [["Pilot", _crewTemplate]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _SquadLeaderTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
