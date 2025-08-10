execute as @a[distance=..4] run damage @s 5 mob_attack_no_aggro

playsound minecraft:entity.player.attack.sweep voice @a ~ ~1 ~ 1 1
playsound minecraft:item.trident.riptide_3 voice @a ~ ~1 ~ 1 1
particle minecraft:sweep_attack ~ ~1 ~ 2 0 2 1 10

function monsters:chapter_2/forest_afterimage/cast/end