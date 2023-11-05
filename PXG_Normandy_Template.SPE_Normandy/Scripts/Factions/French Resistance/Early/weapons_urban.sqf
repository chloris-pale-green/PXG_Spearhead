params["_side","_faction","_variant", "_loadout"]; 

resRandomWeapons = ["SPE_Fusil_Mle_208_12_Sawedoff", "SPE_M1_Carbine", "SPE_K98_Late", "SPE_MP40", "SPE_M1_Garand", "SPE_G43"];

// add primary weapon
switch (_loadout) do {
	default { player addWeapon selectRandom resRandomWeapons };
	case "plt";
	case "sqd_ld": { player addWeapon "SPE_Sten_Mk2"; };
	case "sqd_gre": { player addWeapon "SPE_K98_Late_GW"; };
    case "sqd_ar": { player addWeapon "SPE_FM_24_M29"; };
    case "sqd_dmr": { player addWeapon "SPE_K98ZF39"; };
    case "sqd_sab": { player addWeapon "SPE_Sten_Mk2_Suppressed"; };
	case "sup_mmg_g": { player addWeapon "SPE_MG42"; };
};

// add secondary weapon
switch (_loadout) do {
	default {};
	case "plt";
	case "sqd_ld";
	case "sqd_dmr":	{ player addWeapon "SPE_P08"; };
};

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {
		//unitBackpack player addItemCargoGlobal["rhs_weap_M136",1];
		player addWeapon "SPE_PzFaust_60m";
	};
};
