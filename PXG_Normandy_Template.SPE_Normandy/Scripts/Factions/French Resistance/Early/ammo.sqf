params["_side","_faction","_variant", "_loadout"]; 

// add primary ammo 
switch (_loadout) do {
	default {
		switch (primaryWeapon player) do {
			default {};
			case "SPE_Fusil_Mle_208_12_Sawedoff": {
					for "_i" from 1 to 4 do { player addItemToUniform "SPE_2Rnd_12x65_Pellets"};
					for "_i" from 1 to 6 do { player addItemToVest "SPE_2Rnd_12x65_Pellets"};
			};
			case "SPE_M1_Carbine": {
					for "_i" from 1 to 6 do { player addItemToUniform "SPE_15Rnd_762x33"};
					for "_i" from 1 to 4 do { player addItemToVest "SPE_15Rnd_762x33"};
			};
			case "SPE_K98_Late": {
					for "_i" from 1 to 8 do { player addItemToUniform "SPE_5Rnd_792x57"};
					for "_i" from 1 to 8 do { player addItemToVest "SPE_5Rnd_792x57"};
			};
            case "SPE_MP40": {
					for "_i" from 1 to 3 do { player addItemToUniform "SPE_32Rnd_9x19"};
					for "_i" from 1 to 3 do { player addItemToVest "SPE_32Rnd_9x19"};
			};
            case "SPE_M1_Garand": {
					for "_i" from 1 to 6 do { player addItemToUniform "SPE_8Rnd_762x63"};
					for "_i" from 1 to 5 do { player addItemToVest "SPE_8Rnd_762x63"};
			};
            case "SPE_G43": {
					for "_i" from 1 to 4 do { player addItemToUniform "SPE_10Rnd_792x57"};
					for "_i" from 1 to 4 do { player addItemToVest "SPE_10Rnd_792x57"};
			};
		};
	};
	case "plt";
	case "sqd_sab";
	case "sqd_ld": {
		for "_i" from 1 to 3 do { player addItemToUniform "SPE_32Rnd_9x19_Sten" };
		for "_i" from 1 to 4 do { player addItemToVest "SPE_32Rnd_9x19_Sten" };
	};
	case "sqd_ar": {
		for "_i" from 1 to 3 do { player addItemToVest "SPE_25Rnd_75x54" };
		for "_i" from 1 to 8 do { player addItemToBackpack "SPE_25Rnd_75x54" };
	};
	case "sqd_dmr";
	case "sqd_gre": {
		for "_i" from 1 to 8 do { player addItemToUniform "SPE_5Rnd_792x57" };
		for "_i" from 1 to 8 do { player addItemToVest "SPE_5Rnd_792x57" };
	};
	case "sup_mmg_g": {
		for "_i" from 1 to 1 do { player addItemToVest "SPE_50Rnd_792x57" };
		for "_i" from 1 to 5 do { player addItemToBackpack "SPE_50Rnd_792x57" };
	};
};

// add secondary ammo
switch (_loadout) do {
	default {};
	case "sqd_ld";
	case "sqd_dmr";
	case "plt": {
		for "_i" from 1 to 3 do { player addItemToUniform "SPE_8Rnd_9x19_P08" };
	};
};

// add assistant ammo 
switch (_loadout) do {
	default {};
	case "sup_mmg_l": {
		for "_i" from 1 to 4 do { player addItemToBackpack "SPE_50Rnd_792x57" };
	};
	case "sqd_aar": {
		for "_i" from 1 to 6 do { player addItemToBackpack "SPE_25Rnd_75x54" };
	};
};

// add other ammo 
switch (_loadout) do {
	default {};
	case "sqd_lat": {
		for "_i" from 1 to 2 do { player addItemToBackpack "SPE_1Rnd_PzFaust_60m" };
	};
};

// add explosive charges
switch (_loadout) do {
	default {};
    case "sqd_sab": {
		for "_i" from 1 to 4 do { player addItemToBackpack "SPE_US_TNT_half_pound_mag" };
		for "_i" from 1 to 1 do { player addItemToBackpack "SPE_US_TNT_4pound_mag" };
		//for "_i" from 1 to 1 do { player addItemToBackpack "SPE_Ladung_Small_MINE_mag" };
    };
};

// add grenades
switch (_loadout) do {
	default {
        // White
		for "_i" from 1 to 2 do { player addItemToVest "SPE_NB39" };
        // Frag
		for "_i" from 1 to 2 do { player addItemToVest "SPE_Shg24_Frag" };
	};
};
switch (_loadout) do {
	default {};
	case "sqd_ld";
	case "sqd_sab": {
        // Incendiary
		for "_i" from 1 to 1 do { player addItemToBackpack "SPE_US_AN_M14" };
	};
};

// add rifle grenades
switch (_loadout) do {
	default {};
	case "sqd_gre": {
        // HE
		for "_i" from 1 to 5 do { player addItemToBackpack "SPE_1Rnd_G_SPRGR_30" }; 
        // HEAT
		for "_i" from 1 to 2 do { player addItemToBackpack "SPE_1Rnd_G_PZGR_30" };
        // White
		for "_i" from 1 to 1 do { player addItemToBackpack "SPE_1Rnd_G_NBGR_42" };
	};
};
