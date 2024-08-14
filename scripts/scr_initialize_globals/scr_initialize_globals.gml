// scr_initialize_globals

// Initialize global variables for ranks
global.RANK_ACE = 0;
global.RANK_2 = 1;
global.RANK_3 = 2;
global.RANK_4 = 3;
global.RANK_5 = 4;
global.RANK_6 = 5;
global.RANK_7 = 6;
global.RANK_8 = 7;
global.RANK_9 = 8;
global.RANK_10 = 9;
global.RANK_JACK = 10;
global.RANK_QUEEN = 11;
global.RANK_KING = 12;

// Initialize global variables for suits
global.SUIT_SPADES = 0;
global.SUIT_HEARTS = 1;
global.SUIT_DIAMONDS = 2;
global.SUIT_CLUBS = 3;

// Initialize the selected skin
global.selected_skin = 1; // Default skin

// Initialize arrays to store sprites for each skin
global.sprites_skin1 = [
    spr_blank, spr_spade_1, spr_spade_2, spr_spade_3, spr_spade_4, spr_spade_5, 
    spr_spade_6, spr_spade_7, spr_spade_8, spr_spade_9, spr_spade_10, 
    spr_spade_11, spr_spade_12, spr_spade_13, 
    spr_dia_1, spr_dia_2, spr_dia_3, spr_dia_4, spr_dia_5, 
    spr_dia_6, spr_dia_7, spr_dia_8, spr_dia_9, spr_dia_10, spr_dia_11, spr_dia_12, spr_dia_13, 
    spr_club_1, spr_club_2, spr_club_3, spr_club_4, spr_club_5, spr_club_6, spr_club_7, spr_club_8, 
    spr_club_9, spr_club_10, spr_club_11, spr_club_12, spr_club_13, 
    spr_heart_1, spr_heart_2, spr_heart_3, spr_heart_4, spr_heart_5, spr_heart_6, spr_heart_7, 
    spr_heart_8, spr_heart_9, spr_heart_10, spr_heart_11, spr_heart_12, spr_heart_13
];

global.sprites_skin2 = [
    spr_new_spade_01, spr_new_spade_02, spr_new_spade_03, spr_new_spade_04, spr_new_spade_05, spr_new_spade_06, spr_new_spade_07, spr_new_spade_08, spr_new_spade_09, spr_new_spade_10, spr_new_spade_11, spr_new_spade_12, spr_new_spade_13,
    spr_new_hearts_01, spr_new_hearts_02, spr_new_hearts_03, spr_new_hearts_04, spr_new_hearts_05, spr_new_hearts_06, spr_new_hearts_07, spr_new_hearts_08, spr_new_hearts_09, spr_new_hearts_10, spr_new_hearts_11, spr_new_hearts_12, spr_new_hearts_13,
    spr_new_dia_01, spr_new_dia_02, spr_new_dia_03, spr_new_dia_04, spr_new_dia_05, spr_new_dia_06, spr_new_dia_07, spr_new_dia_08, spr_new_dia_09, spr_new_dia_10, spr_new_dia_11, spr_new_dia_12, spr_new_dia_13,
    spr_new_club_01, spr_new_club_02, spr_new_club_03, spr_new_club_04, spr_new_club_05, spr_new_club_06, spr_new_club_07, spr_new_club_08, spr_new_club_09, spr_new_club_10, spr_new_club_11, spr_new_club_12, spr_new_club_13
];