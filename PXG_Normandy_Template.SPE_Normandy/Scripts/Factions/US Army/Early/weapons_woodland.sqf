params["_side","_faction","_variant", "_loadout"]; 

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "SPE_M1_Garand"; };
	case "plt": { player addWeapon "SPE_M1_Carbine"; };
    // TODO: Thompson instead? Has Thompson vest.
	case "sqd_ld": { player addWeapon "SPE_M1A1_Thompson"; };
	case "sqd_gre": {
        player addWeapon "SPE_M1903A3_Springfield_M1_GL";
        player addPrimaryWeaponItem "SPE_ACC_GL_M1";
    };
    case "sqd_ar": { player addWeapon "SPE_M1918A2_BAR"; };
    case "sqd_dmr": { player addWeapon "SPE_M1903A4_Springfield"; };
    case "sqd_flame": { player addWeapon "SPE_M2_Flamethrower"; };
    case "logi";
	case "sup_mmg_l";
    case "sqd_lat";
    case "sqd_eng": { player addWeapon "SPE_M1_Carbine"; };
	case "sup_mmg_g": { player addWeapon "SPE_M1919A4"; };
	case "ar_ld";
	case "ar_c": { player addWeapon "SPE_M3_GreaseGun"; };
	case "pil": {};
};

// add secondary weapon
switch (_loadout) do {
	default {};
	case "plt";
	case "sqd_ld";
	case "sqd_dmr";
	case "sqd_flame";
	case "pil": { player addWeapon "SPE_M1911"; };
};

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {
		//unitBackpack player addItemCargoGlobal["rhs_weap_M136",1];
		player addWeapon "SPE_M1A1_Bazooka";
	};
};
