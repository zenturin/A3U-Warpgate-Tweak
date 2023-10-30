    class NFTS_Base
    {
        requiredAddons[] = {"IFA3_Core", "NORTH_Main"};
        basepath = QPATHTOFOLDER(Templates\Templates\NFtS);
        logo = QPATHTOFOLDER(Templates\Templates\NFtS\NFtS_logo.paa);
        priority = 16;
        equipFlags[] = {"lowTech"};
    };	

    class NFTS_Reb_Temperate : NFTS_Base
    {
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\Templates\NFtS\flag_finland.paa);
        name = "NFtS FIN";
        file = "NFtS_Reb_FIN_Temperate";
		climate[] = {"arid","temperate","tropical"};
    };

    class NFTS_Reb_Arctic : NFTS_Base
    {
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\Templates\NFtS\flag_finland.paa);
        name = "NFtS FIN";
        file = "NFtS_Reb_FIN_Arctic";
		climate[] = {"arctic"};
    };
