if (random(100) < 100) { // 50% chance to drop something
    var loot = scr_loot_drop_random(global.loot_table);
    if (loot != noone) {
        instance_create_layer(x, y, "Loot", loot);
    }
}
