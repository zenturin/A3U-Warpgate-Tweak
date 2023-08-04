class OPTRE_M274_ATV : TRIPLES(ADDON,Nodes,Base)
{
    class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.9,-0.453};
            seats[] = {0};
        };
    };
};

class OPTRE_M274_ATV_Ins : OPTRE_M274_ATV {}; // they're the same model, so inherit

// class OPTRE_Pelican_unarmed : TRIPLES(ADDON,Nodes,Base)
// {
//     class Nodes
//     {
//         class Node1
//         {
//             offset[] = {0,6,-3};
//             seats[] = {};
//         };
//         class Node2
//         {
//             offset[] = {0,4,-3};
//             seats[] = {};
//         };
//         class Node3
//         {
//             offset[] = {0,2,-3};
//             seats[] = {};
//         }; // shouldn't need any seats disabling
//     };
// };

// // grab classes
// class A3_soft_f_beta_Truck_02_Truck_02_covered_F_p3d; // kamaz
// class A3_soft_f_beta_Truck_02_Truck_02_transport_F;

// class A3_Soft_F_EPC_Truck_03_Truck_03_covered_F_p3d; // typhoon
// class A3_Soft_F_EPC_Truck_03_Truck_03_transport_F_p3d;

// already should be defined in the other files

class OPTRE_m1015_mule_cover_ins : A3_soft_f_beta_Truck_02_Truck_02_covered_F_p3d {}; // mule
class OPTRE_m1015_mule_ins : A3_soft_f_beta_Truck_02_Truck_02_transport_F {};

class OPTRE_m1087_stallion_cover_unsc : A3_Soft_F_EPC_Truck_03_Truck_03_covered_F_p3d {}; // stallion
class OPTRE_m1087_stallion_unsc : A3_Soft_F_EPC_Truck_03_Truck_03_transport_F_p3d {};