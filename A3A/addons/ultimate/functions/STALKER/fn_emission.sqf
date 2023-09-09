private _emissionMin = missionNamespace getVariable ["A3U_setting_emissionMinimum",45];
private _emissionMax = missionNamespace getVariable ["A3U_setting_emissionMaximum",60];

private _emissionSpeedMin = missionNamespace getVariable ["A3U_setting_emissionSpeedMinimum",125];
private _emissionSpeedMax = missionNamespace getVariable ["A3U_setting_emissionSpeedMaximum",125];

tts_emission_aiEffect = 4; // ignores units that aren't players
tts_emission_immuneUnits = ["Zombie_O_Walker_Civ", "Zombie_O_Shambler_Civ"];

{publicVariable _x} forEach [
	"tts_emission_aiEffect",
	"tts_emission_immuneUnits"
];

[_emissionMin, _emissionMax, _emissionSpeedMin, _emissionSpeedMax, true] spawn tts_emission_fnc_startRandomEmissions;

//["Emission Notification", "An emission storm has been detected.<br/><br/>Seek shelter immediately.<br/><br/>Vehicles protect you just as well as buildings.", true] remoteExec ["A3A_fnc_customHint", 0, false];
// ^ We can't hook onto the emission function, so that won't work

[format ["Started Emissions with params: %1", [_emissionMin, _emissionMax, _emissionSpeedMin, _emissionSpeedMax]], _fnc_scriptName] call A3U_fnc_log;