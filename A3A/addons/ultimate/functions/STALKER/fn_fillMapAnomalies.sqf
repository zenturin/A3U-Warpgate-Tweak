params [["_anomalyAmount", 200]];

private _size = worldSize;

private _anomalyAmount = _size / (missionNamespace getVariable ["A3U_setting_anomalyAmount", 200]);

private _axis = _size / 2;
private _center = [_axis, _axis , 0]; // grab the center of the map, so we know where to start the anomaly spawning from
private _radius = sqrt 2 * _axis; // grab the general radius of the map, this is usually bigger than the map. We divide it to almost get the correct size later

[[[_center, (_radius / 1.6), (_radius / 1.6), 0, true]],(_anomalyAmount / 2),(_anomalyAmount / 3),(_anomalyAmount / 3),(_anomalyAmount * 2)] call A3U_fnc_createAnomalyField;

[format ["Creating anomaly field with anomalyAmount: %1", _anomalyAmount], _fnc_scriptName] call A3U_fnc_log;