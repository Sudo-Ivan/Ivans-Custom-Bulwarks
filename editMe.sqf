/**
*  editMe
*
*  Defines all global config for the mission
*
*  Domain: Client, Server
* 
*  Edited By: SMITH
**/

/*New feature added: Point Bank!!
 This variable holds the amount of kill point deposited by the players
*/
POINT_BANK_INIT_AMOUNT 		   = 0;
MAX_POINT_BANK_DEPOSIT_AMOUNT  = ("MAX_POINT_BANK_DEPOSIT_AMOUNT" call BIS_fnc_getParamValue);
MAX_POINT_BANK_WITHDRAW_AMOUNT = ("MAX_POINT_BANK_WITHDRAW_AMOUNT" call BIS_fnc_getParamValue);

/* Variable to check category open*/
CAT_OPEN = 0;

/* Attacker Waves */

// List_Bandits, List_ParaBandits, List_OPFOR, List_INDEP, List_NATO, List_Viper
HOSTILE_LEVEL_1 = List_Bandits;  // Wave 0 >
HOSTILE_LEVEL_2 = List_OPFOR;    // Wave 5 >
HOSTILE_LEVEL_3 = List_Viper;    // Wave 10 >
HOSTILE_ARMED_CARS = List_Armour;//expects vehicles
HOSTILE_ARMOUR = List_ArmedCars; //expects vehicles

HOSTILE_MULTIPLIER = ("HOSTILE_MULTIPLIER" call BIS_fnc_getParamValue);  // How many hostiles per wave (waveCount x HOSTILE_MULTIPLIER)
HOSTILE_TEAM_MULTIPLIER = ("HOSTILE_TEAM_MULTIPLIER" call BIS_fnc_getParamValue) / 100;   // How many extra units are added per player
PISTOL_HOSTILES = ("PISTOL_HOSTILES" call BIS_fnc_getParamValue);  //What wave enemies stop only using pistols

/* LOCATION LIST OPTIONS */
// List_AllCities - for any random City
// List_SpecificPoint - will start the mission on the "Specific Bulwark Pos" marker (move with mission editor). Location must meet BULWARK_LANDRATIO and LOOT_HOUSE_DENSITY, BULWARK_MINSIZE, etc requirements
// List_LocationMarkers - for a location selected randomly from the Bulwark Zones in editor (Currently broken)
// *IMPORTANT* If you get an error using List_SpecificPoint it means that there isn't a building that qualifies. Turning down the "Minimum spawn room size" parameter might help.
BULWARK_LOCATIONS = List_AllCities;

BULWARK_RADIUS = 400;
BULWARK_MINSIZE = ("BULWARK_MINSIZE" call BIS_fnc_getParamValue);   // Spawn room must be bigger than x square metres
BULWARK_LANDRATIO = 60;
LOOT_HOUSE_DENSITY = ("LOOT_HOUSE_DENSITY" call BIS_fnc_getParamValue);

PLAYER_STARTWEAPON = if ("PLAYER_STARTWEAPON" call BIS_fnc_getParamValue == 1) then {true} else {false};
PLAYER_STARTMAP    = if ("PLAYER_STARTMAP" call BIS_fnc_getParamValue == 1) then {true} else {false};
PLAYER_STARTNVG    = if ("PLAYER_STARTNVG" call BIS_fnc_getParamValue == 1) then {true} else {false};

/* Respawn */
RESPAWN_TIME = ("RESPAWN_TIME" call BIS_fnc_getParamValue);
RESPAWN_TICKETS = 0;

/* Loot Blacklist */
LOOT_BLACKLIST = [
    "O_Static_Designator_02_weapon_F", // If players find and place CSAT UAVs they count as hostile units and round will not progress
    "O_UAV_06_backpack_F",
    "O_UAV_06_medical_backpack_F",
    "O_UAV_01_backpack_F",
    "B_IR_Grenade",
    "O_IR_Grenade",
    "I_IR_Grenade"
];

/* Whitelist modes */
/* 0 = Off */
/* 1 = Only Whitelist Items will spawn as loot */
/* 2 = Whitelist items get added to existing loot (increases the chance of loot spawning */
LOOT_WHITELIST_MODE = 0;

/* Loot Whitelists */
/* Fill with classname arrays: ["example_item_1", "example_item_2"] */
/* To use Whitelisting there MUST be at least one applicaple item in each LOOT_WHITELIST array*/
LOOT_WHITELIST_WEAPON = [];
LOOT_WHITELIST_APPAREL = [];
LOOT_WHITELIST_ITEM = [];
LOOT_WHITELIST_EXPLOSIVE = [];
LOOT_WHITELIST_STORAGE = [];

/* Loot Spawn */
LOOT_WEAPON_POOL    = List_AllWeapons - LOOT_BLACKLIST;    // Classnames of Loot items as an array
LOOT_APPAREL_POOL   = List_AllClothes + List_Vests - LOOT_BLACKLIST;
LOOT_ITEM_POOL      = List_Optics + List_Items - LOOT_BLACKLIST;
LOOT_EXPLOSIVE_POOL = List_Mines + List_Grenades + List_Charges - LOOT_BLACKLIST;
LOOT_STORAGE_POOL   = List_Backpacks - LOOT_BLACKLIST;

/* Random Loot */
LOOT_HOUSE_DISTRIBUTION = ("LOOT_HOUSE_DISTRIBUTION" call BIS_fnc_getParamValue);  // Every *th house will spwan loot.
LOOT_ROOM_DISTRIBUTION = ("LOOT_ROOM_DISTRIBUTION" call BIS_fnc_getParamValue);   // Every *th position, within that house will spawn loot.
LOOT_DISTRIBUTION_OFFSET = 0; // Offset the position by this number.
LOOT_SUPPLYDROP = ("LOOT_SUPPLYDROP" call BIS_fnc_getParamValue) / 100;        // Radius of supply drop
PARATROOP_COUNT = ("PARATROOP_COUNT" call BIS_fnc_getParamValue);
PARATROOP_CLASS = List_NATO;
DEFECTOR_CLASS = List_NATO;

/* Points */
SCORE_KILL = ("SCORE_KILL" call BIS_fnc_getParamValue);                 // Base Points for a kill
SCORE_HIT = ("SCORE_HIT" call BIS_fnc_getParamValue);                   // Every Bullet hit that doesn't result in a kill
SCORE_DAMAGE_BASE = ("SCORE_DAMAGE_BASE" call BIS_fnc_getParamValue);   // Extra points awarded for damage. 100% = SCORE_DAMAGE_BASE. 50% = SCORE_DAMAGE_BASE/2
SCORE_RANDOMBOX = 100;  // Cost to spin the box

/*Point multipliers of SCORE_KILL for different waves */
HOSTILE_LEVEL_1_POINT_SCORE = 0.75;
HOSTILE_LEVEL_2_POINT_SCORE = 1;
HOSTILE_LEVEL_3_POINT_SCORE = 1.50;
HOSTILE_CAR_POINT_SCORE = 2;
HOSTILE_ARMOUR_POINT_SCORE = 4;

/* Comment out or delete the below support items to prevent the player from buying them */
/* Category type for the last index*/

BULWARK_SUPPORTITEMS = [
	[8500,  "+1  Ticket",              "+1",  		  8001, 0],
	[14000,  "+2  Tickets",             "+2",  		  8002, 0],
	[20000,  "+3  Tickets",             "+3",  		  8003, 0],
	[25000,  "+5  Tickets",             "+5",  		  8004, 0],
	[35000, "+10 Tickets",             "+10", 		  8005, 0],
	[40000, "+20 Tickets",             "+20", 		  8006, 0],
    [800,   "Recon UAV",               "reconUAV",    8007, 1],
    [1680,  "Emergency Teleport",      "telePlode",   8008, 1],
    [1950,  "Paratroopers",            "paraDrop",    8009, 1],
    [3850,  "Missile CAS",             "airStrike",   8010, 1],
    [4220,  "Mine Cluster Shell",      "mineField",   8011, 1],
    [4690,  "Rage Stimpack",           "ragePack",    8012, 1],
    [5930,  "Mind Control Gas",        "mindConGas",  8013, 1], //Does Not Work
    [6666,  "ARMAKART TM",             "armaKart",    8014, 1],
	[6668,  "Attack Chopper",             "attackChoppa",    8015, 1], //Does Not Work
    [7500,  "Predator Drone",          "droneControl",8016, 1]
];

/* Objects the Player can buy */

/* Radius prevents hostiles walking through objects */

/* - Price
   - Display Name 
   - Class Name 
   - Rotation When Bought
   - Object Radius (meters) *prevents AI glitching through object and triggers suicide bombers 
   - Has AI true/false (for objects with AI like autonomous turrests)
   - Category Number 0 Building / Platforms, 1 Bunkers / Barricades, 2 Walls / Barbwires
   3 Ramps / Stairs, 4 Bridges / Ladder, 5 Tank Traps, 6 Sentries, 7 Wheeled, 8 Tanks, 9 Special
   
   */  
BULWARK_BUILDITEMS = [
	[25,    "Long Plank (8m)",        "Land_Plank_01_8m_F",                 	 0,   4, false, 0, 1],
    [65,    "Flat Triangle (1m)",     "Land_DomeDebris_01_hex_green_F",   	   180, 1.5, false, 0, 2],  
    [75,    "Long Net",               "CamoNet_INDP_F",                     	 0, 1.5, false, 0, 3],
	[80,    "Medium Net",             "CamoNet_OPFOR_open_F",               	 0,   2, false, 0, 4],	
    [85,    "Big Net",                "CamoNet_OPFOR_big_F",                	 0,   2, false, 0, 5],
	[260,   "Portable Light",         "Land_PortableLight_double_F",      	   180,   1, false, 0, 6],
	[1000,  "Hallogen Lamp",          "Land_LampHalogen_F",                	 	90,   1, false, 0, 7],
	[1110,  "Concrete Platform",      "BlockConcrete_F",                    	 0, 3.5, false, 0, 8],
	[4600,  "Foundation Open",        "Land_i_Addon_04_V1_F",               	 0, 6.5, false, 0, 9],
	[5100,  "Foundation End",         "Land_i_Addon_03_V1_F", 			    	 0, 6.5, false, 0, 10],
	[5100,  "Foundation Mid",		  "Land_i_Addon_03mid_V1_F",				 0, 6.5, false, 0, 11],
    [6000,  "Guard Tower",            "Land_Cargo_Patrol_V3_F",             	 0, 3.5, false, 0, 12],
    [6500,  "Reservior Tower",        "Land_ReservoirTower_F",  	        	 0,   6, false, 0, 13],
	[6800,  "Half Metal Shelter",     "Land_MetalShelter_01_F",             	 0,   5, false, 0, 14],
	[7300,  "Metal Shelter",      	  "Land_MetalShelter_02_F",             	 0,   6, false, 0, 15],
	[8650,  "Castle Tower",           "Land_Castle_01_tower_F",             	 0,   6, false, 0, 16],
	[8700,  "Light House",            "Land_LightHouse_F",                  	 0, 7.5, false, 0, 17],
	[8900,  "Large Modular Bunker",			  "Land_Bunker_01_big_f",			  	   180, 6.5, false, 0, 18],
	[9500,  "Pillbox Multi Story",				  "Land_PillboxBunker_01_big_F",				  	   180, 6.5, false, 0, 19],    
	[9700,  "Sniper Tower",			  "land_gm_tower_bt_11_60",			  	   180, 6.5, false, 0, 20],
    [9800,  "Cargo Tower",            "Land_Cargo_Tower_V1_F",            	   180,   8, false, 0, 21],
	[10000, "Mosque Tower",    "land_tower_lxws",          	 0,   7, false, 0, 22],
	[12550, "ATC Tower",   "Land_Airport_Tower_F",    	     0,   9, false, 0, 23],
	[50,    "Junk Barricade",         "Land_Barricade_01_4m_F",             	 0, 1.5, false, 1, 24],
	[90,	"Sandbag End",			  "Land_BagFence_End_F",					 0, 1.5, false, 1, 25],	
    [95,	"Sandbag Corner",		  "Land_BagFence_Corner_F",			    	 0, 1.5, false, 1, 26],	
	[100,	"Sandbag Short",		  "Land_BagFence_Short_F",			    	 0, 1.5, false, 1, 27],
	[105,	"Sandbag Long",			  "Land_BagFence_Long_F",					 0, 1.5, false, 1, 28],
	[110, 	"Sandbag Round",		  "Land_BagFence_Round_F",			       180, 1.5, false, 1, 29],
	[120,   "Sandbag Wall",     	  "Land_SandbagBarricade_01_half_F",    	 0, 1.5, false, 1, 30],    
	[125,   "Sandbag Barricade",      "Land_SandbagBarricade_01_hole_F",    	 0, 1.5, false, 1, 31],
	[400,   "Pillbox Bunker",         "Land_PillboxBunker_01_rectangle_F",  	90,   3, false, 1, 32],
	[450,   "H Barrier x1",		      "Land_HBarrier_1_F",				    	 0,   2, false, 1, 33],
    [450,   "H Barrier x3",           "Land_HBarrier_3_F",                  	 0,   2, false, 1, 34],
	[450,   "H Barrier x5",		      "Land_HBarrier_5_F",				    	 0,   2, false, 1, 35],
    [500,   "Bunker Block",           "Land_Bunker_01_blocks_3_F",          	 0,   2, false, 1, 36],	
	[1000,  "D-H Barrier 4",       	  "Land_HBarrierWall4_F",               	 0,   4, false, 1, 37],
	[1000,  "D-H Barrier Corner",	  "Land_HBarrierWall_corner_F",              0, 4.5, false, 1, 38],
	[1050,  "Big H Barrier",          "Land_HBarrierBig_F",				    	 0,   4, false, 1, 39],
/**/[1050,  "D-H Barrier 6",          "Land_HBarrierWall6_F",                    0, 4.5, false, 1, 40],
	[1100,  "D-H Barrier Corridor",   "Land_HBarrierWall_corridor_F",           90,   5, false, 1, 41],/**/
	[2050,  "Small Bunker",           "Land_BagBunker_Small_F",           	   180,   3, false, 1, 42],
	[4250,  "H Barrier Tower",        "Land_HBarrierTower_F",                  180, 7.5, false, 1, 43],
    [4500,  "Pillbox",                "Land_PillboxBunker_01_hex_F",       		90, 2.5, false, 1, 44],
	[8500,  "Modular Bunker",         "Land_Bunker_01_Small_F",           	   180, 3.5, false, 1, 45],
    [8500,  "Bag Bunker Tower",       "Land_BagBunker_Tower_F",             	 0,   5, false, 1, 46],
	[130,   "Razorwire",              "Land_Razorwire_F",				    	 0, 1.5, false, 2, 47],	
	[135,   "Wired Fence",	 		  "Land_Mil_WiredFence_F",			    	 0, 1.2, false, 2, 48],
	[140,   "Wired Fence 10m",	      "Land_New_WiredFence_10m_F",		    	 0,   3, false, 2, 49],
	[150,   "Concrete Pillar",        "Land_City_Pillar_F",				    	 0,   2, false, 2, 50],
	[155,   "Concrete fence 4m",	  "Land_City2_4m_F",				    	 0,   2, false, 2, 51],
	[155,   "Concrete fence 8m",      "Land_City_8m_F",					    	 0,   3, false, 2, 52],
	[160,   "Concrete Barrier",       "Land_CncBarrier_stripes_F",		    	 0,   1, false, 2, 53],
	[170,   "Concrete Walkway",       "Land_GH_Platform_F",                 	 0, 3.5, false, 2, 54],
    [170,   "Concrete Shelter",       "Land_CncShelter_F",                  	 0,   1, false, 2, 55], 
    [200,   "Concrete Wall Low 4m",   "Land_Concrete_SmallWall_4m_F",       	 0,   2, false, 2, 56],
    [225,   "Concrete Wall Low 8m",	  "Land_Concrete_SmallWall_8m_F",       	 0,   2, false, 2, 57],	
	[250,   "Wide Concrete Wall",     "Land_CncWall4_F",                    	 0,   2, false, 2, 58],
    [250,   "High Concrete Wall",     "Land_Mil_WallBig_4m_F",              	 0,   2, false, 2, 59],
    [300,   "Long Concrete Wall",     "Land_CncBarrierMedium4_F",           	 0,   3, false, 2, 60],
	[315,   "Pillbox Round Wall 3m",  "Land_PillboxWall_01_3m_round_F",     	 0, 1.5, false, 2, 61],
	[315,   "Pillbox Wall 3m",        "Land_PillboxWall_01_3m_F",           	 0, 1.5, false, 2, 62],
	[385,   "Pillbox Round Wall 6m",  "Land_PillboxWall_01_6m_round_F",     	 0, 2.5, false, 2, 63],
	[385,   "Pillbox Wall 6m",        "Land_PillboxWall_01_6m_F",           	 0, 2.5, false, 2, 64],
	[3200,  "Canal Wall 10m",		  "Land_Canal_Wall_10m_F",			    	 0, 3.5, false, 2, 65],
    [3400,  "Canal Wall Stairs", 	  "Land_Canal_Wall_Stairs_F",		    	 0, 3.5, false, 2, 66], 
    [60,    "Small Ramp (1m)",        "Land_Obstacle_Ramp_F",             	   180, 1.5, false, 3, 67],
    [425,   "Low Ramp",               "Land_RampConcrete_F",                	 0,   7, false, 3, 68],
	[450,   "High Ramp",              "Land_RampConcreteHigh_F",            	 0,   5, false, 3, 69],	
	[950,   "Stairs",                 "Land_GH_Stairs_F",                 	   180,   4, false, 3, 70],
	[750,   "Ladder",                 "Land_PierLadder_F",                  	 0,   1, false, 4, 71],
	[1500,  "Small Metal Bridge",     "Land_Walkover_01_F",                 	 0,   4, false, 4, 72],
	[140,	"Dragons Teeth", 		  "Land_DragonsTeeth_01_1x1_new_F",     	 0,   1, false, 5, 73],
	[140,   "Dragons Teeth (Red)",    "Land_DragonsTeeth_01_1x1_new_redwhite_F", 0,   1, false, 5, 74],
	[145,   "Tank Trap",              "Land_CzechHedgehog_01_new_F",        	 0,   1, false, 5, 75],
	[700,  "Dragon Teeth x8",        "Land_DragonsTeeth_01_4x2_new_F",     	 0, 3.5, false, 5, 76],
	[700,  "Dragon Teeth (Red) x8",  "Land_DragonsTeeth_01_4x2_new_redwhite_F", 0, 3.5, false, 5, 77],
	[2500,   "RU Ammo Box",      "CUP_Box_TK_MILITIA_Ammo_F",                 	 0,   1, false, 6, 78],
	[3500,   "NATO Ammo Box",    "rhsusf_mags_crate",		        	 0,   1, false, 6, 79],
    [1200,  "Vehicle Ammo Box",      "Box_NATO_AmmoVeh_F",                 	 0,   1, false, 6, 80],
    [2250,  "Mk30 HMG (High)",        "B_HMG_01_high_F",                    	 0,   1, false, 6, 81],
	[2250,  "Mk30 HMG (Low)",         "I_HMG_01_F",						    	 0,   1, false, 6, 82],
	[2600,  "50Cal HMG (High)",       "I_E_HMG_02_high_F",                  	 0,   1, false, 6, 83],
	[2600,  "50Cal HMG (Low)",        "I_E_HMG_02_F",                       	 0,   1, false, 6, 84],
	/*[2800,  "DShKM",				  "CUP_DShKM_mg2",					         0,   1, false, 6, 85],*/
	[2950,  "Mk32 GMG (High)",        "I_GMG_01_high_F",			        	 0,   1, false, 6, 85],
	[2950,  "Mk32 GMG (Low)",         "I_GMG_01_F",						    	 0,   1, false, 6, 86],    
    [7900,  "Mk30 Auto HMG",          "B_HMG_01_A_F",                     	   180, 3.5,  true, 6, 87],
	[8200,  "Mk6 82mm Morta",		  "O_Mortar_01_F",                      	 0,   1, false, 6, 88],
	[20,    "Helipad Marker",         "Land_HelipadSquare_F",               	 0,   3, false, 7, 89],	
	[11500, "UGV Stomper RCWS",       "I_UGV_01_rcws_F",                    	 0,   3, true, 7, 90], 
	[11500, "Repair Truck",		  "CUP_B_nM1038_Repair_NATO_T",						 0,   3, false, 7, 91], 
	[11500, "NATO UGV RCWS",  	      "B_UGV_01_rcws_F",                    	 0,   3, true, 7, 92], 
	[17300, "FV-720 Mora",            "I_APC_tracked_03_cannon_F",          	 0, 5.5, false, 7, 93],
	[19000, "AFV-4 Gorgon",           "I_APC_Wheeled_03_cannon_F",          	 0, 6.5, false, 7, 94],
	[22650, "BTR-K Kamysh",           "O_APC_Tracked_02_cannon_F",          	 0, 6.5, false, 8, 95],
	[25800, "ZSU-39 Tigris",		  "O_APC_Tracked_02_AA_F",              	 0, 6.5, false, 8, 96],
	[29900, "T-100 Varsuk",           "O_MBT_02_cannon_F",                  	 0, 6.5, false, 8, 97],
	[35200, "MBT-52 Kuma",            "I_MBT_03_cannon_F",				    	 0, 6.5, false, 8, 98],	
    [49500, "T-14",            "rhs_t14_tv",				    	 0, 6.5, false, 8, 99],
    [52000, "Challenger",            "CUP_B_Challenger2_NATO",				    	 0, 6.5, false, 8, 100],
    [56000, "M1A2 TUSK II",            "CUP_B_M1A2C_TUSK_II_NATO",				    	 0, 6.5, false, 8, 101],
    [800,   "ACE Medical Supply Crate",    "ACE_medicalSupplyCrate",		        	 0,   1, false, 6, 102],
	[800,   "ACE Medical Supply Crate Advanced",    "ACE_medicalSupplyCrate_advanced",		        	 0,   1, false, 6, 103]

];

/* Time of Day*/
DAY_TIME_FROM = ("DAY_TIME_FROM" call BIS_fnc_getParamValue);
DAY_TIME_TO = ("DAY_TIME_TO" call BIS_fnc_getParamValue);

// Check for sneaky inverted configuration. FROM should always be before TO.
if (DAY_TIME_FROM > DAY_TIME_TO) then {
    DAY_TIME_FROM = DAY_TIME_TO - 2;
};

/* Starter MediKits */
BULWARK_MEDIKITS = ("BULWARK_MEDIKIT" call BIS_fnc_getParamValue);
