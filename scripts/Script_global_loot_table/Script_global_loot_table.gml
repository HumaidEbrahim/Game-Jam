global.loot_table = [
		{item: Obj_weapon_weapon1, weight:50},
		{item: Obj_weapon_laserADM, weight:50},
		{item: Obj_weapon_nrzRifle, weight:50},
		{item: Obj_weapon_shotgun, weight:50},
		{item: Obj_weapon_pistol, weight:50},
		{item: Obj_healthDrop, weight:50},
		{item: Obj_healthUpgrade, weight:50}
	]

function scr_loot_drop_random(_loot_table) {
    var total_weight = 0;
    for (var i = 0; i < array_length(_loot_table); i++) {
        total_weight += _loot_table[i].weight;
    }

    var roll = random(total_weight);
    var running_total = 0;

    for (var i = 0; i < array_length(_loot_table); i++) {
        running_total += _loot_table[i].weight;
        if (roll < running_total) {
            return _loot_table[i].item;
        }
    }

    return noone; // fallback
}