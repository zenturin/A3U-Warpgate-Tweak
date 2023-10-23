#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {"TFAR_SCR536"};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3A_Events"};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

#include "CfgFunctions.hpp"

// #include "radio_ids.hpp"

class cfgWeapons
{
    class ItemRadio;
    #include "patches\cfgWeapons.hpp"
};

class cfgVehicles
{
    class Item_Base_F;
    #include "patches\cfgVehicles.hpp"
};

class RscBackPicture;
class RscEditLCD;
class HiddenButton;
class HiddenRotator;
class HiddenFlip;

class scr536_radio_dialog
{
	idd=11000;
	movingEnable=1;
	controlsBackground[]={};
	objects[]={};
	onUnload="['OnRadioOpen', [player, TF_sw_dialog_radio, false, 'scr536_radio_dialog', false]] call TFAR_fnc_fireEventHandlers;";
	// onLoad="if (sunOrMoon < 0.2) then { ((_this select 0) displayCtrl 67676) ctrlSetText '\z\tfar\addons\handhelds\fadak\ui\fadak_n.paa';};";
	controls[]=
	{
		"background"
	};
	class background: RscBackPicture
	{
		idc=68686;
		text="\z\tfar\addons\handhelds\fadak\ui\fadak.paa";
		x="0.0142813 * safezoneW + safezoneX";
		y="-0.1314 * safezoneH + safezoneY";
		w="0.332062 * safezoneW";
		h="1.1198 * safezoneH";
		moving=1;
	};
};

class A3U
{
    #include "config\plane\cfgPlaneLoadouts.hpp"
    #include "config\cfgForbiddenItems.hpp"
    #include "config\trader\cfgTraderMods.hpp"
};

class Extended_PreInit_EventHandlers 
{
    class A3U_init
	{
        init = "call A3U_fnc_init";
    };
};