params["_side","_faction","_variant", "_loadout"]; 

// add primary ammo 
switch (_loadout) do {
	default {
		for "_i" from 1 to 8 do { player addItemToVest "SPE_5Rnd_792x57" };
	};
	case "sqd_dmr": {
		for "_i" from 1 to 8 do { player addItemToUniform "SPE_5Rnd_792x57" };
	};
	case "plt": {
		for "_i" from 1 to 6 do { player addItemToVest "SPE_10Rnd_792x57" };
	};
	case "sqd_aar": {
		for "_i" from 1 to 4 do { player addItemToUniform "SPE_10Rnd_792x57" };
		for "_i" from 1 to 2 do { player addItemToVest "SPE_10Rnd_792x57" };
	};
	case "sqd_ld": {
		for "_i" from 1 to 6 do { player addItemToVest "SPE_32Rnd_9x19" };
	};
	case "sqd_ar": {
		for "_i" from 1 to 5 do { player addItemToVest "SPE_30Rnd_792x33" };
		for "_i" from 1 to 3 do { player addItemToBackpack "SPE_30Rnd_792x33" };
	};
	case "sqd_flame": {
		for "_i" from 1 to 4 do { player addItemToBackpack "SPE_Flammenwerfer41_Mag" };
	};
	case "sup_mmg_g": {
		for "_i" from 1 to 2 do { player addItemToVest "SPE_50Rnd_792x57" };
		for "_i" from 1 to 2 do { player addItemToBackpack "SPE_50Rnd_792x57" };
	};
    case "ar_ld";
	case "ar_c": {
		for "_i" from 1 to 2 do { player addItemToUniform "SPE_32Rnd_9x19" };
		for "_i" from 1 to 2 do { player addItemToVest "SPE_32Rnd_9x19" };
	};
    case "pil": {};
};

// add secondary ammo
switch (_loadout) do {
	default {};
	case "plt": {
		for "_i" from 1 to 3 do { player addItemToUniform "SPE_8Rnd_9x19_P08" };
	};
    case "sqd_dmr";
    case "sqd_flame";
	case "sqd_ld": {
		for "_i" from 1 to 3 do { player addItemToVest "SPE_8Rnd_9x19_P08" };
	};
	case "pil": {
		for "_i" from 1 to 2 do { player addItemToUniform "SPE_8Rnd_9x19_P08" };
		for "_i" from 1 to 3 do { player addItemToVest "SPE_8Rnd_9x19_P08" };
	};
};

// add assistant ammo 
switch (_loadout) do {
	default {};
	case "sqd_aar": {
		for "_i" from 1 to 4 do { player addItemToBackpack "SPE_30Rnd_792x33" };
	};
	case "sup_mmg_l": {
		for "_i" from 1 to 4 do { player addItemToBackpack "SPE_50Rnd_792x57" };
	};
};

// add other ammo 
switch (_loadout) do {
	default {};
	case "sqd_lat": {
		for "_i" from 1 to 1 do { player addItemToBackpack "SPE_1Rnd_PzFaust_60m" };
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
	case "plt": {
        // White
		for "_i" from 1 to 2 do { player addItemToBackpack "SPE_NB39" };
        // Frag
		for "_i" from 1 to 2 do { player addItemToBackpack "SPE_Shg24_Frag" };
	};
	case "sqd_dmr": {
        // White
		for "_i" from 1 to 2 do { player addItemToVest "SPE_NB39" };
        // Frag
		for "_i" from 1 to 2 do { player addItemToBackpack "SPE_Shg24_Frag" };
	};
	case "ar_ld";
	case "ar_c";
    case "pil": {};
};

// add rifle grenades
switch (_loadout) do {
	default {};
	case "sqd_gre": {
        // HE
		for "_i" from 1 to 4 do { player addItemToBackpack "SPE_1Rnd_G_SPRGR_30" }; 
        // HEAT
		for "_i" from 1 to 2 do { player addItemToUniform "SPE_1Rnd_G_PZGR_30" };
        // White
		//for "_i" from 1 to 2 do { player addItemToBackpack "SPE_1Rnd_G_NBGR_42" };
	};
};
