private _forbiddenItems = [];
private _inheritedForbiddenItems = [];

private _cfg = (configfile >> "A3U" >> "forbiddenItems") call BIS_fnc_getCfgSubClasses;

{
	// if (getNumber (configFile "A3U" >> "forbiddenItems" >> _configClass >> "inheritedPath") isNotEqualTo "") exitWith {
	// 	_inheritedForbiddenItems pushBack _x;
	// };
	_forbiddenItems pushBack _x;
	[format ["Added %1 to forbiddenItems list.", _x]] call A3U_fnc_log;
} forEach _cfg;

A3U_forbiddenItems = _forbiddenItems;

[format ["Final forbiddenItems list: %1", A3U_forbiddenItems]] call A3U_fnc_log;