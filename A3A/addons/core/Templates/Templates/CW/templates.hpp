    class CW_Base
    {
        requiredAddons[] = {"3AS_Characters", "442_equipment", "SWLB_clones", "JLTS_core", "CWDependencies"};
        basepath = QPATHTOFOLDER(Templates\Templates\CW);
        logo = "\LS_statics_props\flags\data\flag_republic.paa";
        priority = 100;
    };

    class CW_REP : CW_Base
    {
        side = "Occ";
        flagTexture = "\LS_statics_props\flags\data\flag_republic.paa";
        name = "Republic";
        file = "CW_AI_REP";
    };

    class CW_CIS : CW_Base
    {
        side = "Inv";
        flagTexture = "\LS_statics_props\flags\data\flag_cis.paa";
        name = "CIS";
        file = "CW_AI_CIS";
    };

    class CW_REP_WBK : CW_Base
    {
        requiredAddons[] = {"3AS_Characters", "442_equipment", "SWLB_clones", "JLTS_core", "CWDependencies", "WBK_Lightsabers"};
        side = "Occ";
        flagTexture = "\LS_statics_props\flags\data\flag_republic.paa";
        name = "Republic (WBK)";
        file = "CW_AI_REP_WBK";
    };

    class CW_CIS_WBK : CW_Base
    {
        requiredAddons[] = {"3AS_Characters", "442_equipment", "SWLB_clones", "JLTS_core", "CWDependencies", "WBK_DifferentRobotics_1"};
        side = "Inv";
        flagTexture = "\LS_statics_props\flags\data\flag_cis.paa";
        name = "CIS (WBK)";
        file = "CW_AI_CIS_WBK";
    };
    
    class CW_MAN : CW_Base
    {
        side = "Reb";
        flagTexture = "\LS_statics_props\flags\data\flag_mandalorian.paa";
        name = "Mandalorians";
        file = "CW_Reb_MAND";
    };
	
    class CW_RIV_DET : CW_Base
    {
        side = "Riv";
        flagTexture = "\LS_statics_props\flags\data\flag_mandalorian.paa";
        name = "CW Deathwatch";
        file = "CW_Riv_DET";
    };
	
    class EMP_Base
    {
        requiredAddons[] = {"3AS_Characters", "442_equipment", "SWLB_clones", "JLTS_core", "CWDependencies", "JMSLLTE_empire_mod"};
        basepath = QPATHTOFOLDER(Templates\Templates\CW);
        logo = QPATHTOFOLDER(Templates\Templates\CW\flag_Empire.paa);
        priority = 100;
    };

    class EMP_EMP : EMP_Base
    {
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\Templates\CW\flag_Empire.paa);
        name = "Empire";
        file = "EMP_AI_EMP";
    };
	
    class EMP_EMP_WBK : EMP_Base
    {
        requiredAddons[] = {"3AS_Characters", "442_equipment", "SWLB_clones", "JLTS_core", "CWDependencies", "JMSLLTE_empire_mod", "WBK_Lightsabers"};
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\Templates\CW\flag_Empire.paa);
        name = "Empire (WBK)";
        file = "EMP_AI_EMP_WBK";
    };