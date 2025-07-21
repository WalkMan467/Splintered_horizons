scoreboard players reset #weapon.crimson_claw_arrow.range global.main
function weapons:type/arrows/crimson_claw_arrow/range

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.wither.ambient voice @a ~ ~1 ~ 0.5 1
playsound minecraft:entity.sheep.shear voice @a ~ ~1 ~ 1 0.5
playsound minecraft:item.shield.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~1 ~ 1 1.25
playsound minecraft:entity.player.attack.sweep voice @a ~ ~1 ~ 1 0.5

particle minecraft:sweep_attack ~ ~ ~ 1.5 0.5 1.5 1 5
particle minecraft:crit ~ ~ ~ 0 0 0 1.25 100 force @a


execute as @e[distance=..4,type=!player] run damage @s 8 magic
scoreboard players set @a[distance=..4] weapon.effect.crimson_claw 100

advancement revoke @a only weapons:arrows/crimson_claw_arrow