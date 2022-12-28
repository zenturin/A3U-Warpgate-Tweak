/*
Maintainer: Socrates
   Adds salary to current rebel. 

Parameters:
	<NUMBER> Total faction income

Return Value:
    <NUMBER> Total faction income minus rebel salary


Scope: Client
Environment: Any
Public: Yes

Example:
[_resAdd] call SCRT_fnc_common_rebelSalary;
*/
#include "..\defines.inc"
FIX_LINE_NUMBERS()

params ["_resAdd"];

private _rebels = call SCRT_fnc_misc_getRebelPlayers;

if(_rebels isEqualTo []) exitWith {
	Warning("No salary as no active rebels found.");
	_resAdd;
};

private _rebelsCount = count _rebels;
private _totalSalary = _resAdd / 4;

private _incomePerPlayer = round(_totalSalary / _rebelsCount);
{
	private _playerMoney = round (((_x getVariable ["moneyX", 0]) + _incomePerPlayer) max 0);
	_x setVariable ["moneyX", _playerMoney, (owner _x)];
	private _paycheckText = format [
		localize "STR_comms_mp_paycheck",
		name _x,
		_incomePerPlayer, 
		A3A_faction_civ get "currencySymbol",
		call SCRT_fnc_misc_getWorldName
	];

	[petros, "income", _paycheckText] remoteExec ["A3A_fnc_commsMP", _x];
} forEach _rebels;

_resAdd = _resAdd - _totalSalary;

_resAdd