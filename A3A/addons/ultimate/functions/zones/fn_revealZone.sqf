params ["_marker"];

if !(hideEnemyMarkers) exitWith {["Aborting function, hideEnemyMarkers is not enabled.", _fnc_scriptName] call A3U_fnc_log};
if (_marker isEqualTo "") exitWith {["Aborting function, _marker does not exist.", _fnc_scriptName] call A3U_fnc_log};

private _markerText = markerText "Dum"+_marker;
private _markerTextSplit = toLower ((_markerText splitString "_") select 0);
"Dum"+_marker setMarkerAlphaLocal 1;
"Dum"+_marker setMarkerText "Revealed "+_markerTextSplit;