execute as @a[distance=..3] unless score @s entity.dummy_mob matches 1.. run damage @s 5 mob_attack by @n[distance=..6,type=husk,tag=monsters.sunfire_emissary]
execute as @a[distance=..3] unless score @s entity.dummy_mob matches 1.. run function monsters:chapter_3/sunfire_emissary/1/fire/use

playsound minecraft:entity.generic.extinguish_fire voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 1

scoreboard players reset #monster.sunfire_emissary.1.damage.fx particle
function monsters:chapter_3/sunfire_emissary/1/damage/fx