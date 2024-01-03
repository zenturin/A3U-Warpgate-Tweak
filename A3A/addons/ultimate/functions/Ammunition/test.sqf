private _start = diag_tickTime;

private _lootContainer = cursorObject;

private _data = [];

_magazines = magazineCargo _lootContainer; 
_weaponsWithAttachments = weaponsItems _lootContainer; 
_items = itemCargo _lootContainer; 
_backpacks = backpackCargo _lootContainer;

_data = [_magazines, _weaponsWithAttachments, _items, _backpacks];

switch (true) do 
{ 
	case (_lootContainer isKindOf "Man"): 
	{
		_assignedItems = assignedItems _lootContainer; 
		_lootContainerMagazines = magazines _lootContainer; 
		_vest = vest _lootContainer; 
		_headgear = headgear _lootContainer; 
		_backpack = backpack _lootContainer; 
		_lootContainerWeapons = weapons _lootContainer;
	  
		_data = [_assignedItems, _lootContainerMagazines, _vest, _headgear, _backpack, _lootContainerWeapons];  
	};
};

//diag_log _data;

private _fnc_checkIfUnlocked = {
    params ["_data"];

    private _indexed = [];
    
    {
        // diag_log _x;
        private _array = _x;
        // diag_log _array;

        {
            private _item = _x;
            if (typeName _item isEqualTo "ARRAY") then {
                // diag_log format["Test: %1", _item];
                _item = _item select 0;
            };

            {
                //diag_log _x;
                if (_item in _indexed) exitWith {};
                if (_item in _x) then {diag_log format["%1 is already unlocked", _item]; _indexed pushBack _item};
            } forEach [unlockedBackpacks, unlockedItems, unlockedMagazines, unlockedWeapons];
        } forEach _array;
        // diag_log _indexed;
    } forEach _data;

    _indexed;
};

private _indexed = [_data] call _fnc_checkIfUnlocked;

{
    _lootContainer removeItems _x;
    diag_log format["Removing %1 from crate.", _x];
    _lootContainer addMagazineCargoGlobal [_x, -10000];
    _lootContainer addWeaponCargoGlobal [_x, -10000];
    _lootContainer addItemCargoGlobal [_x, -10000];
    _lootContainer addBackpackCargoGlobal [_x, -10000];
} forEach _indexed;

private _stop = diag_tickTime;

[format ["Loot Search Took Approximately: %1 seconds.",round(_stop - _start)]] call A3U_fnc_log;

// {  
// 	private _item = _x;  
// 	diag_log _item;
// 	{ 
// 		private _array = _x; 
// 		{
//             private _arsenalItem = _x;
// 			if (typeName (_item select 0) isEqualTo "ARRAY") then {
//                 // _item = (_item select _forEachIndex)
//                 {
//                     if( _arsenalItem in _item ) then { 
//                         diag_log format["%1 was in datalist", (_item select 0)];  
//                         //diag_log _item; 
//                     }; 
//                 } forEach _item
//             }; 
// 			if( (_x select 0) in _item ) then { 
// 				diag_log format["%1 was in datalist", (_item select 0)];  
// 				//diag_log _item; 
// 			}; 
// 		} forEach _array; 
// 	} forEach jna_datalist;  
// } forEach _data;