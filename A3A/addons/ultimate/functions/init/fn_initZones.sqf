params [["_markersX", markersX]];

// private _hideEnemyMarkers = missionNamespace getVariable ["A3U_setting_hideEnemyMarkers",false];
if !(hideEnemyMarkers) exitWith {};

{
    private _markerSide = sidesX getVariable [_x, sideUnknown];
    if (_markerSide isNotEqualTo sideUnknown && {_markerSide isNotEqualTo resistance}) then 
    {
        if (_x in airportsX || {_x in citiesX}) then {} else {
            "Dum"+_x setMarkerAlpha 0; // "Dum" is for dummy marker, the actual one you see in-game. The editor one is hidden
        };
    };
} forEach _markersX;