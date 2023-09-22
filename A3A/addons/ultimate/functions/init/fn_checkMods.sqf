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
    _addons pushBack "CUP and RHS";
};

if (_addons isNotEqualTo []) exitWith {
    private _text = format["Warning. Addons loaded may not work correctly, or work together. Addons: %1", _addons];

    [_text, "Warning"] call A3U_fnc_popup;

    _addons
};