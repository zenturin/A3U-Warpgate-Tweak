#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3A_core", "A3_UI_F"};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

#define RANDOM_NUMBER __RAND_UINT8__

class RANDOM_NUMBER
{
    number = RANDOM_NUMBER;
};

#if RANDOM_NUMBER > 240
    #define BACKGROUND data\backgrounds\racs_co.paa
#endif

#if RANDOM_NUMBER > 200
    #define BACKGROUND data\backgrounds\pla_co.paa
#endif

#if RANDOM_NUMBER > 150
    #define BACKGROUND data\backgrounds\rebels_co.paa
#endif

#if RANDOM_NUMBER > 100
    #define BACKGROUND data\backgrounds\canada_co.paa
#endif

#if RANDOM_NUMBER > 50
    #define BACKGROUND data\backgrounds\us_army_co.jpg
#endif

#ifndef BACKGROUND
    #define BACKGROUND data\backgrounds\us_army_co.jpg
#endif

class RscActivePicture;
class RscStandardDisplay;
class RscDisplayMain: RscStandardDisplay 
{
	enableDisplay = 0;
	class controlsBackground 
    {
        class Background 
        {
            idc = -1;
            type = 0;
            style = 48;
            text = QPATHTOFOLDER(BACKGROUND); // Path to your custom main menu image
            x = "safeZoneX";
            y = "safeZoneY";
            w = "safeZoneW";
            h = "safeZoneH";
            colorBackground[] = {0, 0, 0, 0};
            colorText[] = {1, 1, 1, 1};
            font = "RobotoCondensed";
            sizeEx = 0.025;
        };
    };
	class controls 
    {
		delete Spotlight;
		delete Spotlight1;
		delete Spotlight2;
		delete Spotlight3;
		delete BackgroundSpotlightRight;
		delete BackgroundSpotlightLeft;
		delete BackgroundSpotlight;
		delete SpotlightNext;
		delete SpotlightPrev;
		class Logo: RscActivePicture
		{ //change to discord
			text = QPATHTOFOLDER(data\AUC_Logo.paa);
			tooltip="Join the official Antistasi Ultimate Discord server!";
			color[]={0.89999998,0.89999998,0.89999998,1};
			colorActive[]={1,1,1,1};
			shadow=0;
			x="0.5 - 	5 * 	(pixelW * pixelGrid * 2)";
			y="safezoneY + (3 - 0.5 * 	5) * 	(pixelH * pixelGrid * 2)";
			w="2 * 	5 * 	(pixelW * pixelGrid * 2)";
			h="1 * 	5 * 	(pixelH * pixelGrid * 2)";
			url = "https://discord.gg/antistasiultimate";
			onButtonClick="['https://discord.gg/antistasiultimate'] call bis_fnc_executeCode;";
			onSetFocus="(_this select 0) ctrlsettextcolor [1,1,1,1];";
			onKillFocus="(_this select 0) ctrlsettextcolor [0.9,0.9,0.9,1];";
			onLoad="(_this select 0) ctrlshow !(395180 in getDLCs 1)";
		};
		class base_side_btn
        {
			onLoad = "(_this # 0) ctrlEnable false;";
			type = 1;
			idc = -1;
			style = 48;
			x = "safeZoneX + safeZoneW - 0.18"; // Adjusted x-coordinate to place it at the bottom right of the screen
			y = "safeZoneY + safeZoneH - 0.27"; // Adjusted y-coordinate to place it at the bottom right of the screen
			w = 0.18;
			h = 0.05;
			text = QPATHTOFOLDER(data\DevB.paa); // No text needed for an image button
			colorBackground[] = {0, 0, 0, 0}; // Transparent background
			colorText[] = {1, 1, 1, 1};
			font = "RobotoCondensed";
			sizeEx = 0.04;
			colorFocused[] = {1, 1, 1, 0.9}; // Background color when focused (not used)
			colorShadow[] = {0, 0, 0, 0}; // Shadow color (not used)
			colorBorder[] = {0, 0, 0, 0}; // Border color (not used)
			shadow = 0;
			soundEnter[] = {"", 0.1, 1};
			soundPush[] = {"", 0.1, 1};
			soundClick[] = {"", 0.1, 1};
			soundEscape[] = {"", 0.1, 1};
			colorDisabled[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			colorBackgroundDisabled[] = {0, 0, 0, 0};
			offsetX = 0;
			offsetY = 0;
			offsetPressedX = 0;
			offsetPressedY = 0;
			borderSize = 0;
			onMouseButtonClick = "-";
		};
		class SteamButton1: base_side_btn 
        {
			onLoad = "(_this # 0) ctrlEnable true";
			text = QPATHTOFOLDER(data\DevB.paa); // Path to button image
			tooltip = "Steam workshop Mod";
			url = "https://steamcommunity.com/sharedfiles/filedetails/?id=3020755032";
			onMouseEnter = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\DevB_Hov.paa"""; // Change button image when hovered
			onMouseExit = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\DevB.paa"""; // Change button image when unhovered
			onMouseButtonUp = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\DevB_Hov.paa"""; // Change button image when hovered
			onMouseButtonDown = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\DevB.paa"""; // Change button image when unhovered
		};
		class GitHubButton2: base_side_btn 
        {
			onLoad = "(_this # 0) ctrlEnable true";
			y = "safeZoneY + safeZoneH - 0.33"; // Adjusted y-coordinate to place it at the bottom right of the screen
			text = QPATHTOFOLDER(data\GitB.paa); // Path to button image
			tooltip="GitHub Page";
			url = "https://github.com/SilenceIsFatto/A3-Antistasi-Ultimate";
			onMouseEnter = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\GitB_Hov.paa"""; // Change button image when hovered
			onMouseExit = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\GitB.paa"""; // Change button image when unhovered
			onMouseButtonUp = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\GitB_Hov.paa"""; // Change button image when hovered
			onMouseButtonDown = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\GitB.paa"""; // Change button image when unhovered
		};
		class ServerButton3: base_side_btn 
        {
			onLoad = "(_this # 0) ctrlEnable true";
			y = "safeZoneY + safeZoneH - 0.39"; // Adjusted y-coordinate to place it at the bottom right of the screen
			text = QPATHTOFOLDER(data\ServerB.paa); // No text needed for an image button
			tooltip="Connect to our community server!";
			onMouseButtonClick = "connectToServer ['stutpip123.ddns.net', 2302, '1221']";
			onMouseEnter = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ServerB_Hov.paa"""; // Change button image when hovered
			onMouseExit = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ServerB.paa"""; // Change button image when unhovered
			onMouseButtonUp = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ServerB_Hov.paa"""; // Change button image when hovered
			onMouseButtonDown = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ServerB.paa"""; // Change button image when unhovered
		};
		class ArmaCreditsButton4: base_side_btn 
        {
			onLoad = "(_this # 0) ctrlEnable true";
			x = "safeZoneX"; // Adjusted x-coordinate to place it at the bottom right of the screen
			text = QPATHTOFOLDER(data\ArmaCredits.paa); // No text needed for an image button
			tooltip="ArmA 3 Credits";
			onMouseButtonClick = "if (scriptdone (missionnamespace getvariable ['RscDisplayMain_credits',scriptnull])) then {RscDisplayMain_credits = _this spawn (uinamespace getvariable 'bis_fnc_credits');};";
			onMouseEnter = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ArmaCredits_Hov.paa"""; // Change button image when hovered
			onMouseExit = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ArmaCredits.paa"""; // Change button image when unhovered
			onMouseButtonUp = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ArmaCredits_Hov.paa"""; // Change button image when hovered
			onMouseButtonDown = "(_this select 0) ctrlSetText ""\x\a3a\addons\main_menu\data\ArmaCredits.paa"""; // Change button image when unhovered
		};
	};
};