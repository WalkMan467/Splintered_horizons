particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 1 0.75
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~ ~ 1 2

execute \
    anchored feet \
    rotated ~ 0 \
    as @e[distance=..4,tag=!weapon.flame_of_finality.flower,type=!#minecraft:dummy_mob,type=!player] at @s run \
function weapons:type/scythe/flame_of_finality/lc/4/damage

kill @s