scoreboard players reset #weapon.resplendence_arrow.range global.main
function weapons:type/arrows/resplendence_arrow/range

playsound minecraft:entity.allay.ambient_with_item voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.75
playsound minecraft:voice.aquilumera_light voice @a ~ ~1 ~ 0.25 1
playsound minecraft:block.trial_spawner.eject_item voice @a ~ ~1 ~ 1 0.5

execute as @e[distance=..4,type=!player] run damage @s 8 magic
scoreboard players set @a[distance=..4] weapon.effect.resplendence 100

advancement revoke @a only weapons:arrows/resplendence_arrow