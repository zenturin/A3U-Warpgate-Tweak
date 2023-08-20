params [["_cfgPatches", ""]];

if (_cfgPatches isEqualTo "") exitWith {false};

if (isClass (configFile >> "cfgPatches" >> _cfgPatches)) then {
    [format ["Found cfgPatches class: %1", _cfgPatches]] call A3U_fnc_log;
    true
} else {
    [format ["Could not find cfgPatches class: %1", _cfgPatches]] call A3U_fnc_log;
    false
};