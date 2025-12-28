
execute \
    as @a[distance=..3] run \
damage @s 5 mob_attack by @n[distance=..6,type=husk,tag=monsters.sun_of_the_abyssal_eclipse]

execute \
    as @a[distance=..3] run \
function monsters:other/sun_of_the_abyssal_eclipse/1/fire/use

playsound minecraft:entity.generic.extinguish_fire voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 1

scoreboard players reset #monster.sun_of_the_abyssal_eclipse.1.damage.fx particle
function monsters:other/sun_of_the_abyssal_eclipse/1/damage/fx