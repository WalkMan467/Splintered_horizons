tag @s add temp

execute \
    as @e[sort=arbitrary,distance=..16,tag=weapon.flame_of_finality.flower,type=item_display] at @s \
    if score @s weapon.flame_of_finality.flower.id = @p[tag=temp] weapon.flame_of_finality.flower.id run \
function weapons:type/scythe/flame_of_finality/lc/4/particle

tag @s remove temp

scoreboard players set @s player.effect.glitch_effect 110