class forbiddenItems
{
    class forbidden_unlimited_base
    {
        unlimited = 1;
        appearInCrates = 0;
    };
    class forbidden_limited_base
    {
        unlimited = 0;
        appearInCrates = 0;
    };

    class HLC_wp_M134Painless : forbidden_limited_base {};

    #include "cfgForbiddenItemsCW.hpp"
    #include "cfgForbiddenItemsOPTRE.hpp"
	#include "cfgForbiddenItemsGM.hpp"
};