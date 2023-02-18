/*
Maintainer: Socrates
    Gets time limit with time multiplier and datetime usage.

Arguments:
    <NUMBER> Minutes.

Return Value:
    <ARRAY> Tuple with value and humanized datetime.

Scope: Any
Environment: Any
Public: Yes

Example:
[_vehicle] call SCRT_fnc_misc_getTimeLimit;
*/

params [
	["_limit", 60, [0]]
];

private _timeLimit = _limit * timeMultiplier;
private _dateLimit = [date select 0, date select 1, date select 2, date select 3, (date select 4) + _timeLimit];
private _dateLimitNum = dateToNumber _dateLimit;
_dateLimit = numberToDate [date select 0, _dateLimitNum];
private _displayTime = [_dateLimit] call A3A_fnc_dateToTimeString;

[_dateLimitNum, _displayTime]