#include "..\defines.inc"
FIX_LINE_NUMBERS()

#include "Constants.inc"

params ["_level"];

//intentionally inverted
private _activityLevel = localize "STR_info_bar_rivals_activity_1";

switch (_level) do {
	case INTRUSIVE_ACTIVITY: {
		_activityLevel = localize "STR_info_bar_rivals_activity_2";
	};
    case CONSPICIOUS_ACTIVITY: {
		_activityLevel = localize "STR_info_bar_rivals_activity_3";
    };
	case MODERATE_ACTIVITY: {
		_activityLevel = localize "STR_info_bar_rivals_activity_4";
    };
	case INSIGNIFICANT_ACTIVITY: {
		_activityLevel = localize "STR_info_bar_rivals_activity_5";
    };
	default {
		Error_1("Bad level recieved, cannot generate string, was %1", _level);
	};
};

_activityLevel