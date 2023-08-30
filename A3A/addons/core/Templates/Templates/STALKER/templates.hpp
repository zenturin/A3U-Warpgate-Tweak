    class STALKER_Base
    {
        requiredAddons[] = {"CUP_Vehicles_Core", "SCE_Uniforms"};
        logo = QPATHTOFOLDER(Templates\Templates\STALKER\images\flag_ukraine_co.paa); // before people go "WOOO WHEN UKRAINE FACTION", no! STALKER is set in ukraine around 2000-2010
        basepath = QPATHTOFOLDER(Templates\Templates\STALKER);
        priority = 30;
        climate[] = {"temperate","tropical","arid","arctic"};
    };

    class STALKER_Military : STALKER_Base
    {
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_military_ca.paa);
        name = "Military";
        file = "STALKER_AI_Military";
        description = "[STALKER] A phenomena of blinding light illuminates the sky high above the CNPP. The incident lasts two full hours before subsiding, witnesses reported it disappeared as if power suddenly failed. The Ukrainian military was subsequently dispatched into the zone.";
    };
    class STALKER_Monolith : STALKER_Base
    {
        side = "Inv";
        flagTexture = QPATHTOFOLDER(Pictures\Markers\marker_monolith_ca.paa);
        name = "Monolith";
        file = "STALKER_AI_Monolith";
        description = "[STALKER] Monolith soldiers were 'recruited' as the guardians of the C-Consciousness to repel stalkers. They are vastly superior than the Military since they are funded by shady governments looking for a stake in 'The Zone', although they are completely under the control of the C-Consciousness.";
    };

    class STALKER_Civ_Empty : STALKER_Base
    {
        side = "Civ";
        flagTexture = QPATHTOFOLDER(Templates\Templates\STALKER\images\flag_ukraine_co.paa);
        name = "No Civs";
        file = "STALKER_Civ_Empty";
        description = "[STALKER] Due to the emissions, all civilian life was wiped out.  (This is an experimental template, disabling traffic and basically all human life other than the main factions)";
    };
    class STALKER_Civ_Zombie : STALKER_Civ_Empty
    {
        requiredAddons[] = {"CUP_Vehicles_Core", "SCE_Uniforms", "WBK_ZombieCreatures"};
        name = "Zombies";
        file = "STALKER_Civ_Zombie";
        description = "[STALKER] Due to the emissions, all civilian life was wiped out, being replaced by zombies. (This is an experimental template, disabling traffic and replacing all civ spawns with zombies)";
    };

    // class OPTRE_Cov : STALKER_Base
    // {
    //     requiredAddons[] = {"OPTRE_Core", "OPTRE_FC_Core"};
    //     side = "Inv";
    //     flagTexture = QPATHTOFOLDER(Templates\Templates\OPTRE\images\flag_covenant_ca.paa);
    //     name = "Covenant (Elites)";
    //     file = "OPTRE_AI_Covenant";
    //     description = "The Covenant (With OPTRE elites)";
    // };

    // class OPTRE_Reb : STALKER_Base
    // {
    //     requiredAddons[] = {"OPTRE_Core"};
    //     side = "Reb";
    //     flagTexture = QPATHTOFOLDER(Templates\Templates\OPTRE\images\flag_insurrection_ca.paa);
    //     name = "Insurrectionists";
    //     file = "OPTRE_Reb_Ins";
    //     description = "Led by Jerald Mulkey Ander, this faction fights to be free from the reign of the UNSC. They are similar to the United Rebel Front, but have no army to back up their cause. Yet.";
    // };

    // class OPTRE_Riv : STALKER_Base
    // {
    //     side = "Riv";
    //     flagTexture = QPATHTOFOLDER(Templates\Templates\OPTRE\images\flag_insurrection_ca.paa);
    //     name = "United Rebel Front";
    //     file = "OPTRE_Riv_Ins";
    //     description = "Led by Colonel Watts, this faction originally fought with the insurrectionists. They hate each other due to different ideals, but still use similar equipment.";
    // };

    // class OPTRE_Civ : STALKER_Base
    // {
    //     side = "Civ";
    //     flagTexture = QPATHTOFOLDER(Templates\Templates\OPTRE\images\flag_insurrection_ca.paa);
    //     name = "OPTRE Civs";
    //     file = "OPTRE_Civ";
    //     description = "OPTRE Civilians.";
    // };