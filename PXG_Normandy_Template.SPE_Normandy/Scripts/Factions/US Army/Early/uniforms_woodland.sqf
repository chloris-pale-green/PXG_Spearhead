params["_side","_faction","_variant", "_loadout"]; 

// add uniform
switch (_loadout) do {
	default { player forceAddUniform "U_SPE_US_Private" };
	case "plt": { player forceAddUniform "U_SPE_US_CC_1LT" };
	case "tacp": { player forceAddUniform "U_SPE_US_CC_EM_trop" };
    case "sup_mmg_l";
	case "sqd_ld": { player forceAddUniform "U_SPE_US_Sergeant" };
	case "sqd_med": { player forceAddUniform "U_SPE_US_Med" };
	case "sup_mmg_g";
	case "sqd_lat";
	case "sqd_gre";
	case "sqd_ar": { player forceAddUniform "U_SPE_US_Private_1st" };
	case "sqd_aar": { player forceAddUniform "U_SPE_US_CC_EM_roll" };
	case "sqd_dmr": { player forceAddUniform "U_SPE_US_CC_EM_trop" };
    case "logi";
	case "sqd_eng": { player forceAddUniform "U_SPE_US_Technician" };
	case "ar_ld": { player forceAddUniform "U_SPE_US_Tank_Crew2" };
	case "ar_c": { player forceAddUniform "U_SPE_US_Tank_Crew" };
	case "pil": { player forceAddUniform "U_SPE_US_Pilot_boot" };
};
	
// add helmet
switch (_loadout) do {
	default { player addHeadgear "H_SPE_US_Helmet_ns"};
	case "sqd_ld": {player addHeadgear "H_SPE_US_Helmet_NCO_net"};
	case "sqd_med": {player addHeadgear "H_SPE_US_Helmet_Med"};
	case "sqd_dmr": {player addHeadgear "H_SPE_US_Helmet_Scrim_ns"};
	case "ar_ld": {player addHeadgear "H_SPE_US_Helmet_Tank_polar"};
	case "ar_c": {player addHeadgear "H_SPE_US_Helmet_Tank_NG"};
	case "pil": {player addHeadgear "H_SPE_US_Helmet_Pilot"};
	case "plt": {player addHeadgear "H_SPE_US_Helmet_First_lieutenant"};
	case "sqd_eng";
	case "sqd_gre";
	case "logi": {player addHeadgear "H_SPE_US_Helmet_Net"};
	case "sup_mmg_g": {player addHeadgear "H_SPE_US_Helmet_os"};
	case "sqd_flame": {
        player addHeadgear "H_SPE_US_Helmet_os";
        player addGoggles "G_SPE_SWDG_Goggles";
    };
};

// add vest
switch (_loadout) do {
	default { player addVest "V_SPE_US_Vest_Garand"};
	case "plt": {player addVest "V_SPE_US_Vest_Carbine_nco_Radio"};
	case "sqd_ld": {player addVest "V_SPE_US_Vest_Thompson_nco"};
	case "sqd_med": {player addVest "V_SPE_US_Vest_Medic"};
	case "sqd_lat": {player addVest "V_SPE_US_Vest_Carbine"};
	case "sqd_gre": {player addVest "V_SPE_US_Vest_Grenadier"};
	case "sqd_ar": {player addVest "V_SPE_US_Vest_Bar"};
	case "sqd_aar": {player addVest "V_SPE_US_Vest_Bar_assist"};
	case "sqd_dmr": {player addVest "V_SPE_GER_SniperBelt"};
	case "sqd_flame": {player addVest "V_SPE_US_Vest_45"};
    case "logi";
	case "sqd_eng": {player addVest "V_SPE_US_Vest_Carbine_eng"};
    case "sqd_dmr";
	case "tacp": { player addVest "V_SPE_US_Vest_Garand_M43"};
	case "sup_mmg_l": {player addVest "V_SPE_US_Vest_Asst_MG"};
	case "sup_mmg_g": {player addVest "V_SPE_US_Vest_M1919"};
	case "pil": {player addVest "V_SPE_US_LifeVest"};
	case "ar_ld";
	case "ar_c": {player addVest "V_SPE_US_Vest_Thompson_M43"};
};

// add backpack 
switch (_loadout) do {
	default { player addBackpack "B_SPE_US_Backpack_Bandoleer_Rifleman"};
	case "sqd_ld": { player addBackpack "B_SPE_US_Backpack_SL"};
	case "tacp": { player addBackpack "B_SPE_US_Radio_alt"};
	case "sqd_gre": { player addBackpack "B_SPE_US_Backpack_Bandoleer_Grenadier_1903"};
	case "sqd_ar": { player addBackpack "B_SPE_US_Backpack_BAR"};
	case "sqd_aar": { player addBackpack "B_SPE_US_AMGBag"};
	case "sqd_lat": { player addBackpack "B_SPE_US_Backpack_RocketBag"};
	case "sqd_dmr": { player addBackpack "B_SPE_US_Suspender_band_sniper"};
	case "sqd_med": { player addBackpack "B_SPE_US_M36_Bandoleer"};
	case "sqd_flame": { player addBackpack "B_SPE_US_M2Flamethrower"};
    case "logi";
	case "sqd_eng": { player addBackpack "B_SPE_US_Backpack_eng"};
	case "sup_mmg_g": { player addBackpack "B_SPE_US_HMGbag"};
	case "sup_mmg_l": { player addBackpack "B_SPE_US_HMGAssistantBag"};
	case "plt": { player addBackpack "B_SPE_US_M36_1stLT"};
    case "ar_ld";
    case "ar_c";
	case "pil": {};
	//case "pil": { player addBackpack "B_SPE_US_TypeA3"};
};
// Clear default items from the backpack
clearAllItemsFromBackpack player;
