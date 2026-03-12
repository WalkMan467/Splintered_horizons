scoreboard players set @s player.click.interval 12
scoreboard players set @s weapon.flame_of_finality.attack.timer 12

playsound minecraft:entity.horse.saddle voice @a ~ ~1 ~ 0.5 0.75
playsound minecraft:entity.horse.saddle voice @a ~ ~1 ~ 0.5 0.75
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 0.5 1
playsound minecraft:entity.blaze.shoot voice @a ~ ~1 ~ 0.75 0.75
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 0.5 0.75

tag @s add temp

execute \
    as @e[sort=arbitrary,distance=..16,tag=weapon.flame_of_finality.flower,type=item_display] at @s \
    if score @s weapon.flame_of_finality.flower.id = @p[tag=temp] weapon.flame_of_finality.flower.id run \
function weapons:type/scythe/flame_of_finality/lc/4/particle

tag @s remove temp

scoreboard players set @s player.effect.glitch_effect 110