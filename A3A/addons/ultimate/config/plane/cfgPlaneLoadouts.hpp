class planeLoadouts
{
    // It also has support for these parameters, though I haven't used them before.
    // mainGun
    // rocketLauncher[]
    // missileLauncher[]
    // bombRacks[]
    // diveParams[]
    class CASDIVE
    {
        class B_Plane_CAS_01_dynamicLoadout_F
        {
            loadout[] = {"","","","","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_BombCluster_03_F","","","",""};
            mainGun = "Gatling_30mm_Plane_CAS_01_F";
            bombRacks[] = {"Bomb_04_Plane_CAS_01_F", "BombCluster_03_F"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
    };
    class CAS
    {
       class B_Plane_CAS_01_dynamicLoadout_F
        {
            loadout[] = {"PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_3Rnd_LG_scalpel","PylonRack_3Rnd_LG_scalpel","PylonRack_3Rnd_LG_scalpel","PylonRack_3Rnd_LG_scalpel","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_HE_F"};
        };
        class AMF_RAFALE_B_01_F
        {
            loadout[] = {"PylonMissile_Missile_MICAIR_x1","PylonMissile_Missile_MICAIR_x1","","","PylonRack_3Rnd_GBU12_LGB","PylonRack_3Rnd_GBU12_LGB","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_TANK_02_x1_f","PylonRack_2_Missile_MICAEM_x1","PylonRack_2_Missile_MICAEM_x1","PylonRack_Missile_TANK_01_x1_f"};
        };
        class TFC_CP140_dynamicLoadout
        {
            loadout[] = {"PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1",""};
        };
    };
   
    class AA
    {
        class B_Plane_Fighter_01_F
        {
            loadout[] = {"PylonRack_Missile_BIM9X_x2","PylonRack_Missile_BIM9X_x2","PylonRack_Missile_BIM9X_x2","PylonRack_Missile_BIM9X_x2","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1"};
        };
        class AMF_RAFALE_B_01_F
        {
            loadout[] = {"PylonMissile_Missile_MICAIR_x1","PylonMissile_Missile_MICAIR_x1","","","PylonRack_Missile_METEOR_1_x1","PylonRack_Missile_METEOR_1_x1","PylonRack_Missile_TANK_02_x1_f","PylonRack_Missile_TANK_02_x1_f","PylonRack_2_Missile_MICAEM_x1","PylonRack_2_Missile_MICAEM_x1","PylonRack_Missile_TANK_01_x1_f"};
        };
    };
};
