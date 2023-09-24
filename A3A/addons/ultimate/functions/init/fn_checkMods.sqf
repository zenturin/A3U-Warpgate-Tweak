/*
    Function: A3U_fnc_checkMods

    Description:
        Checks to see if any mods loaded are "incompatible", returns array of mod names. To be used to inform the player things may not work correctly.

    Parameter:
        N/A

    Returns:
        _addons

    Author:
        Silence
*/

private _addons = [];

if (["CUP_AirVehicles_Core"] call A3U_fnc_hasAddon && {["RHS_US_A2Port_Armor"] call A3U_fnc_hasAddon}) then {
    _addons pushBack "CUP and RHS (Pick One)";
};

if (["AR_AdvancedRappelling"] call A3U_fnc_hasAddon) then {
    _addons pushBack "Advanced Rappeling";
};

if (["AUR_AdvancedUrbanRappelling"] call A3U_fnc_hasAddon) then {
    _addons pushBack "Advanced Urban Rappeling";
};

if (["lambs_danger"] call A3U_fnc_hasAddon) then {
    _addons pushBack "LAMBS AI";
};

if (["VCOM_AI"] call A3U_fnc_hasAddon) then {
    _addons pushBack "VCOM AI";
};

if (["HIG_wall"] call A3U_fnc_hasAddon) then {
    _addons pushBack "AI Cannot See Through Grass";
};

if (["asr_ai3_main"] call A3U_fnc_hasAddon) then {
    _addons pushBack "ASR AI3";
};

if (["ALiVE_main"] call A3U_fnc_hasAddon) then {
    _addons pushBack "ALiVE";
};

if (["mcc_sandbox"] call A3U_fnc_hasAddon) then {
    _addons pushBack "MCC Sandbox 4";
};

if (["zhc_main"] call A3U_fnc_hasAddon) then {
    _addons pushBack "Zulu Headless Client (ZHC)";
};

if (["PiR"] call A3U_fnc_hasAddon) then {
    _addons pushBack "Project injury Reaction (PiR)";
};

if (["Werthles_WHK"] call A3U_fnc_hasAddon) then {
    _addons pushBack "Werthles' Headless Module";
};

if (_addons isNotEqualTo []) exitWith {
    private _addonText = _addons joinString ", ";

    private _text = formatText 
    [
        "Warning. Addons loaded may not work correctly, or work together.%1%1| %2 |%1%1Consider removing them if you encounter any issues.", lineBreak, _addonText
    ];

    [_text, "Warning"] call A3U_fnc_popup;

    _addons
};