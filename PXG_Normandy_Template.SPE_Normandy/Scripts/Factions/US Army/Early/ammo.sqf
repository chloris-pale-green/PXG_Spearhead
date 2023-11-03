params["_side","_faction","_variant", "_loadout"]; 

// add primary ammo 
switch (_loadout) do {
	default {
        // M1 Garand
		for "_i" from 1 to 9 do { player addItemToVest "SPE_8Rnd_762x63" };
	};
    case "logi";
    case "sqd_eng";
    case "sqd_aar";
    case "sqd_lat";
    case "sup_mmg_l";
    case "plt": {
        // M1 Carbine
		for "_i" from 1 to 6 do { player addItemToVest "SPE_15Rnd_762x33" };
    };
	case "sqd_ld": {
		for "_i" from 1 to 3 do { player addItemToVest "SPE_20Rnd_Thompson_45ACP" };
		for "_i" from 1 to 6 do { player addItemToBackpack "SPE_20Rnd_Thompson_45ACP" };
	};
	case "sqd_ar": {
        // BAR
		for "_i" from 1 to 4 do { player addItemToVest "SPE_20Rnd_762x63" };
		for "_i" from 1 to 4 do { player addItemToBackpack "SPE_20Rnd_762x63" };
	};
	case "sqd_dmr";
	case "sqd_gre": {
        // Springfield
		for "_i" from 1 to 8 do { player addItemToVest "SPE_5Rnd_762x63" };
	};
	case "sqd_flame": {
		for "_i" from 1 to 4 do { player addItemToBackpack "SPE_M2_Flamethrower_Mag" };
	};
	case "sup_mmg_g": {
		for "_i" from 1 to 1 do { player addItemToVest "SPE_50Rnd_762x63" };
		for "_i" from 1 to 5 do { player addItemToBackpack "SPE_50Rnd_762x63" };
	};
    case "ar_ld";
	case "ar_c": {
		for "_i" from 1 to 3 do { player addItemToUniform "SPE_30Rnd_M3_GreaseGun_45ACP" };
		for "_i" from 1 to 2 do { player addItemToVest "SPE_30Rnd_M3_GreaseGun_45ACP" };
	};
    case "pil": {};
};

// add secondary ammo
switch (_loadout) do {
	default {};
    case "sqd_flame";
	case "sqd_ld";
	case "sqd_dmr";
	case "plt": {
		for "_i" from 1 to 3 do { player addItemToUniform "SPE_7Rnd_45ACP_1911" };
	};
	case "pil": {
		for "_i" from 1 to 5 do { player addItemToVest "SPE_7Rnd_45ACP_1911" };
	};
};

// add assistant ammo 
switch (_loadout) do {
	default {};
	case "sup_mmg_l": {
		for "_i" from 1 to 4 do { player addItemToBackpack "SPE_50Rnd_762x63" };
	};
};

// add other ammo 
switch (_loadout) do {
	default {};
	case "sqd_lat": {
		for "_i" from 1 to 2 do { player addItemToBackpack "SPE_1Rnd_60mm_M6" };
	};
};

// add grenades
switch (_loadout) do {
	default {
        // White
		for "_i" from 1 to 2 do { player addItemToVest "SPE_US_M18" };
        // Frag
		for "_i" from 1 to 2 do { player addItemToVest "SPE_US_Mk_2" };
	};
    case "plt";
    case "sqd_flame";
	case "sqd_dmr": {
        // White
		for "_i" from 1 to 2 do { player addItemToBackpack "SPE_US_M18" };
        // Frag
		for "_i" from 1 to 2 do { player addItemToBackpack "SPE_US_Mk_2" };
	};
    case "pil": {};
};

// add rifle grenades
switch (_loadout) do {
	default {};
	case "sqd_gre": {
        // HE
		for "_i" from 1 to 4 do { player addItemToBackpack "SPE_1Rnd_G_Mk2" }; 
        // HEAT
		for "_i" from 1 to 2 do { player addItemToVest "SPE_1Rnd_G_M9A1" }; 
        // White Smoke
		//for "_i" from 1 to 2 do { player addItemToVest "SPE_1Rnd_G_M2_ANM8" };
        // Yellow Flare
		//for "_i" from 1 to 1 do { player addItemToBackpack "SPE_1Rnd_G_M21A1" };
        // Green Flare
		for "_i" from 1 to 1 do { player addItemToBackpack "SPE_1Rnd_G_M19A1" };
        // Red Flare
		for "_i" from 1 to 1 do { player addItemToBackpack "SPE_1Rnd_G_M51A1" };
	};
};
