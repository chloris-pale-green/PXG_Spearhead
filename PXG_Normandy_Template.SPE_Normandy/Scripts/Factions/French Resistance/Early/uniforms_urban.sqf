params["_side","_faction","_variant", "_loadout"]; 

resRandomUniforms = ["U_SPE_FFI_Jacket_zwart_Alt", "U_SPE_FFI_Jacket_zwart_swetr", "U_SPE_FFI_Jacket_grijs", "U_SPE_FFI_Casual_5_trop", "U_SPE_FFI_Jacket_grijs", "U_SPE_FFI_Casual_2", "U_SPE_FFI_Casual_6", "U_SPE_FFI_Casual_7_trop",  "U_SPE_FFI_Worker_1_trop", "U_SPE_FFI_Worker_2"];

// add uniform
switch (_loadout) do {
	default { player forceAddUniform selectRandom resRandomUniforms };
};

resRandomSmokes = ["", "", "G_SPE_Cigar_Moza", "G_SPE_Cigarette_Grundstein", "G_SPE_Pipe_Sir_Winston"];
resRandomCap = ["", "", "", "H_SPE_CIV_Worker_Cap_1", "H_SPE_CIV_Worker_Cap_2", "H_SPE_CIV_Worker_Cap_3"];

// add helmet
switch (_loadout) do {
	default {
        player addHeadgear selectRandom resRandomCap;
        player addGoggles selectRandom resRandomSmokes;
    };
};

resRandomVests = ["V_SPE_FFI_Vest_rifle", "V_SPE_FFI_Vest_rifle_frag", "V_SPE_FFI_Vest_rifle_pouch", "V_SPE_FFI_Vest_Pouch", "V_SPE_FFI_Vest_Pouch_frag"];

// add vest
switch (_loadout) do {
	default { player addVest selectRandom resRandomVests };
    case "plt";
	case "sqd_ld": {player addVest "V_SPE_FFI_Vest_SMG"};
	case "sqd_med": {player addVest "V_SPE_FFI_Vest_Pouch"};
	case "sqd_gre": {player addVest "V_SPE_FFI_Vest_rifle_pouch"};
	case "sup_mmg_g"; {player addVest "V_SPE_FFI_Vest_Pouch"};
	case "sqd_sab": { player addVest "V_SPE_FFI_Vest_SMG_frag"};
};

// add backpack 
switch (_loadout) do {
	default { player addBackpack "B_SPE_FFI_Gasbag"};
	case "sqd_med": { player addBackpack "B_SPE_FFI_MedicBag"};
	case "sqd_sab": { player addBackpack "B_SPE_FFI_M36_Saboteur"};
    case "logi";
	case "sqd_eng": { player addBackpack "B_SPE_FFI_SapperBag"};
};
// Clear default items from the backpack
clearAllItemsFromBackpack player;
