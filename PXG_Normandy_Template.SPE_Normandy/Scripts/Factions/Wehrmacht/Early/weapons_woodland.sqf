params["_side","_faction","_variant", "_loadout"]; 

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "SPE_K98_Late"; };
	case "plt": { player addWeapon "SPE_G43"; };
	case "sqd_ld": { player addWeapon "SPE_MP40"; };
	case "sqd_gre": { player addWeapon "SPE_K98_GW"; };
    case "sqd_ar": { player addWeapon "SPE_STG44"; };
    case "sqd_dmr": { player addWeapon "SPE_K98ZF39"; };
    case "sqd_flame": { player addWeapon "SPE_Flammenwerfer41"; };
	case "sup_mmg_g": { player addWeapon "SPE_MG42"; };
	case "ar_ld";
	case "ar_c": { player addWeapon "SPE_MP40"; };
	case "pil": {};
};

// add secondary weapon
switch (_loadout) do {
	default {};
	case "plt";
	case "sqd_ld";
	case "sqd_dmr";
	case "sqd_flame";
	case "pil": { player addWeapon "SPE_P08"; };
};

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {
		//unitBackpack player addItemCargoGlobal["rhs_weap_M136",1];
		player addWeapon "SPE_PzFaust_60m";
	};
};
