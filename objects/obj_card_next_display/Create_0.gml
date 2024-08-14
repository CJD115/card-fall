// Create event of obj_next_card_display

// Determine the card index for the current card
var rank = global.RANK_ACE; // Replace with the actual rank of the card
var suit = global.SUIT_SPADES; // Replace with the actual suit of the card
var card_index = rank + suit * 13;

switch (global.selected_skin) {
    case 1:
        sprite_index = global.sprites_skin1[card_index];
        break;
    case 2:
        sprite_index = global.sprites_skin2[card_index];
        break;
    // Add more cases for additional skins
}