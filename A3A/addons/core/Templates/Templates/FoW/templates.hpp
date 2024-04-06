    class FOW_Base
    {
        requiredAddons[] = {"IFA3_Core","fow_tanks","IFA3_FOW_Compat"};
        basepath = QPATHTOFOLDER(Templates\Templates\IFA);
        logo = QPATHTOFOLDER(Templates\Templates\IFA\ifa_logo.paa);
        priority = 15;
        equipFlags[] = {"lowTech"};
    };

    class FOW_WEH_Temperate : FOW_Base
    {
        side = "Occ";
        flagTexture = "ww2\core_t\if_decals_t\german\flag_ger_co.paa";
        name = "IFA WEH Temperate";
        file = "IFA_AI_WEH_Temperate";
        climate[] = {"temperate","tropical"};
    };
	
    class FOW_USA_Temperate : FOW_Base
    {
        side = "Inv";
        flagTexture = "a3\data_f\flags\flag_us_co.paa";
        name = "IFA USA Temperate";
        file = "IFA_AI_USA_Temperate";
        climate[] = {"temperate","tropical"};
    };		

