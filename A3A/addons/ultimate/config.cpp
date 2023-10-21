#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3A_Events"};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

#include "CfgFunctions.hpp"

#include "radio_ids.hpp"

#define MACRO_ADDITEM(ITEM,COUNT) class _xx_##ITEM { \
    name = #ITEM; \
    count = COUNT; \
};

class cfgWeapons
{
    class ItemRadio;
    #include "patches\cfgWeapons.hpp"
};

class cfgVehicles
{
    class Item_Base_F;
    #include "patches\cfgVehicles.hpp"
};

class A3U
{
    #include "config\plane\cfgPlaneLoadouts.hpp"
    #include "config\cfgForbiddenItems.hpp"
    #include "config\trader\cfgTraderMods.hpp"
};

class Extended_PreInit_EventHandlers 
{
    class A3U_init
	{
        init = "call A3U_fnc_init";
    };
};