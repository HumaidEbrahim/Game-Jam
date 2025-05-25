if !instance_exists(Obj_Boss){
if (random(100) < global.dropRate) { // 50% chance to drop something
    var loot = scr_loot_drop_random(global.loot_table);
    if (loot != noone) {
        instance_create_layer(x, y, "Loot", loot);
    }
}
effect_create_depth(10,ef_cloud,x,y,0.5,c_green);
}