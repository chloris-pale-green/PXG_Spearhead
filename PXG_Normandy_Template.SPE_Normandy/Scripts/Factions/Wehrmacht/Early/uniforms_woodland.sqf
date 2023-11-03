params["_side","_faction","_variant", "_loadout"]; 

// add uniform
switch (_loadout) do {
	default { player forceAddUniform "U_SPE_GER_Soldier_Boots" };
	case "plt": { player forceAddUniform "U_SPE_GER_Oberleutnant" };
	case "tacp": { player forceAddUniform "U_SPE_GER_Soldier_camo" };
	case "sqd_ld": { player forceAddUniform "U_SPE_GER_Unterofficer" };
	case "sqd_gre": { player forceAddUniform "U_SPE_GER_Soldier_Unbloused" };
	case "sqd_ar": { player forceAddUniform "U_SPE_GER_Oberschutze" };
	case "sqd_dmr": { player forceAddUniform "U_SPE_GER_Soldier_camo5" };
	case "sqd_med": { player forceAddUniform "U_SPE_GER_Medic" };
    case "logi";
	case "sqd_eng": { player forceAddUniform "U_SPE_GER_Gefreiter_Gaiters" };
	case "sqd_flame";
    case "sup_mmg_l";
	case "sup_mmg_g": { player forceAddUniform "U_SPE_GER_Soldier_Gaiters" };
	case "ar_ld": { player forceAddUniform "U_SPE_GER_Tank_crew_unterofficer" };
	case "ar_c": { player forceAddUniform "U_SPE_GER_Tank_crew_private" };
	case "pil": { player forceAddUniform "U_SPE_GER_LW_pilot" };
};
	
// add helmet
switch (_loadout) do {
	default { player addHeadgear "H_SPE_GER_Helmet"};
	case "sqd_dmr": {player addHeadgear "H_SPE_GER_HelmetCamo"};
	case "ar_ld": {player addHeadgear "H_SPE_GER_TankOfficerCap"};
	case "ar_c": {player addHeadgear "H_SPE_GER_TankPrivateCap"};
	case "pil": {player addHeadgear "H_SPE_GER_LW_PilotHelmet"};
	case "tacp": {player addHeadgear "H_SPE_GER_Cap"};
	case "plt": {player addHeadgear "H_SPE_GER_OfficerCap"};
    case "sqd_flame": {
        player addHeadgear "H_SPE_GER_Helmet";
        player addGoggles "G_SPE_Dust_Goggles_2";
    };
};

// add vest
switch (_loadout) do {
	default { player addVest "V_SPE_GER_VestKar98"};
	case "plt": {player addVest "V_SPE_GER_OfficerVest"};
	case "sqd_ld": {player addVest "V_SPE_GER_VestUnterofficer"};
	case "sqd_ar": {player addVest "V_SPE_GER_VestSTG"};
	case "sqd_dmr": {player addVest "V_SPE_GER_SniperBelt"};
	case "sqd_med": {player addVest "V_SPE_GER_SaniVest2"};
    case "logi";
	case "sqd_eng": {player addVest "V_SPE_GER_PioneerVest"};
	case "sqd_flame": {player addVest "V_SPE_GER_FWOVest"};
	case "sup_mmg_g": {player addVest "V_SPE_GER_VestMG"};
	case "pil": {player addVest "V_SPE_GER_LW_Schwimm"};
	case "ar_c";
	case "ar_ld": {player addVest "V_SPE_GER_TankPrivateBelt"};
};

// add backpack 
switch (_loadout) do {
	default { player addBackpack "B_SPE_GER_Belt_bag_K98k_MG"};
	case "plt": { player addBackpack "B_SPE_GER_Tonister34_canvas"};
    case "sqd_ld";
	case "tacp": { player addBackpack "B_SPE_GER_Radio"};
	//case "sqd_ld": { player addBackpack "B_SPE_GER_A_frame_Gef"};
	case "sqd_gre": { player addBackpack "B_SPE_GER_A_frame_Grenadier"};
	case "sqd_ar": { player addBackpack "B_SPE_GER_A_frame_STG44_MG"};
	case "sqd_med": { player addBackpack "B_SPE_GER_MedicBackpack"};
    case "logi";
	case "sqd_eng": { player addBackpack "B_SPE_GER_SapperBackpack2"};
	case "sqd_flame": { player addBackpack "B_SPE_GER_Flammenwerfer_41"};
	case "sup_mmg_g": { player addBackpack "B_SPE_GER_Belt_bag_MG"};
	case "sup_mmg_l": { player addBackpack "B_SPE_GER_Backpack_MGAmmo"};
    case "ar_ld";
    case "ar_c";
	case "pil": {};
};
// Clear default items from the backpack
clearAllItemsFromBackpack player;
