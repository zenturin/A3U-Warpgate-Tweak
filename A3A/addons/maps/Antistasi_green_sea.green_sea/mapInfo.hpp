class green_sea 
{
	population[] = {
		{"city_Chernogorsk", 532},
		{"city_Elektrozavodsk", 521},
		{"vill_Tulga", 35},
		{"city_Solnychniy", 179},
		{"city_Berezino", 279},
		{"city_StarySobor", 150},
		{"vill_Msta", 76},
		{"vill_Staroye", 93},
		{"vill_Shakhovka", 52},
		{"vill_Dolina", 76},
		{"vill_Orlovets", 54},
		{"vill_Bor", 52},
		{"city_Gorka", 136},
		{"vill_NovySobor", 110},
		{"vill_Kabanino", 78},
		{"vill_Mogilevka", 100},
		{"vill_Nadezhdino", 82},
		{"vill_Guglovo", 25},
		{"vill_Kamyshovo", 168},
		{"vill_Pusta", 47},
		{"city_Zelenogorsk", 235},
		{"city_Vybor", 188},
		{"vill_Dubrovka", 94},
		{"vill_Khelm", 90},
		{"vill_Olsha", 18},
		{"vill_Gvozdno", 91},
		{"city_Krasnostav", 182},
		{"vill_Petrovka", 38},
		{"vill_Grishino", 121},
		{"vill_Rogovo", 63},
		{"vill_Pogorevka", 65},
		{"vill_Pustoshka", 156},
		{"vill_Kozlovka", 94},
		{"vill_Polana", 123},
		{"vill_Balota", 133},
		{"vill_Komarovo", 108},
		{"vill_Kamenka", 110},
		{"vill_Myshkino", 55},
		{"vill_Pavlovo", 77},
		{"vill_Lopatino", 119},
		{"vill_Vyshnoye", 37},
		{"vill_Prigorodki", 127},
		{"vill_Drozhino", 79},
		{"vill_Sosnovka", 45},
		{"vill_Nizhnoye", 112},
		{"vill_Pulkovo", 34},
		{"vil_Peregon", 179},
		{"Caribou_isl029", 57},
		{"Caribou_isl051", 0},
		{"Utes_name", 0}
	};
	disabledTowns[] = {"Caribou_isl051","Utes_name"};
	antennas[] = {
		{3029.11,2350.27,0.229149},{4547.68,3132.05,0.693176},{3715.81,5984.25,0},{6563.68,3405.56,0.0547333},{5264.35,5314.45,-0.00253296},{6443.78,6545.48,0.0928955},{4967.81,9966.56,0},{8127.52,9151.57,0},{13477.6,3345.84,0.0730896},{13010.1,5964.96,-0.0163116},{12937,12763.6,0.164017},{11241.9,4261.85,-0.0175781},{15694.7,3796.42,0},

		{2834.82,2099.14,0},{17372.9,3274.37,-4.57764e-005},{17724.6,3500.09,0},{18329.7,2555.48,-7.62939e-006},{18830.9,3125.07,0},{18610.1,4617.28,0},{19387.2,5016.62,0},{18293,6820.32,0}
	};
	// antennasBlacklistIndex[] = {13,14,15,16,17,18,19,20}; // basically just duplicates of the rest
	antennasBlacklistIndex[] = {};
	banks[] = {}; //no suitable building available
	garrison[] = {
		{},{"outpost_22","outpost_24","outpost_25","outpost_26","seaport_5","milbase_2","airport_5","resource_10","resource_11","resource_12"},{},{}
	};
	fuelStationTypes[] = {"Land_A_FuelStation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_FuelStation_Feed_PMC","Land_Fuelstation","Land_Fuelstation_army","Land_Benzina_schnell"};
	milAdministrations[] = {
		{10393.766,2419.042,0.291},{11969.223,9217.329,0},{2973.641,5423.228,0}
	};
	climate = "temperate";
	buildObjects[] = {
		{"Land_fortified_nest_big_EP1", 300}, {"Land_Fort_Watchtower_EP1", 300}, {"Fortress2", 200}, {"Fortress1", 100}, {"Fort_Nest", 60},
		{"Land_Shed_09_F", 120}, {"Land_Shed_10_F", 140}, {"ShedBig", 100}, {"Shed", 100}, {"ShedSmall", 60}, {"Land_GuardShed", 30},
		// CUP sandbag walls
		{"Land_BagFenceLong", 10}, {"Land_BagFenceShort", 10}, {"Land_BagFenceRound", 10},        //{"Land_BagFenceEnd", 0, 5}, 
		// Other CUP fences
		{"Land_fort_artillery_nest_EP1", 200}, {"Land_fort_rampart_EP1", 50}, {"Fort_Barricade", 50}, {"Fence", 20}, {"FenceWood", 10}, {"FenceWoodPalet", 10}, 
		// Non-camo vanilla stuff
		{"Land_SandbagBarricade_01_half_F", 20}, {"Land_SlumWall_01_s_2m_F", 5}, {"Land_PillboxBunker_01_hex_F", 200},
		{"Land_Barricade_01_4m_F", 30}, {"Land_GuardBox_01_brown_F", 80}, {"Land_Tyres_F", 10}
	};
};