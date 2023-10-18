    class AMF_Base
    {
        requiredAddons[] = {""};
        basepath = QPATHTOFOLDER(Templates\Templates\AMF);
        logo = QPATHTOFOLDER(Templates\Templates\AMF\images\flag_france_co.paa);
        priority = 80;
    };

    class AMF_Army : AMF_Base
    {
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\Templates\AMF\images\flag_france_co.paa);
        name = "French Army";
        file = "AMF_AI_Army";
    };