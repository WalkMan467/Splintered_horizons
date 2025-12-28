scoreboard players reset #weapon.shadow_arrow.range global.main
function weapons:type/arrows/shadow_arrow/range

playsound minecraft:entity.wither.shoot voice @a ~ ~1 ~ 0.5 0.5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.75


execute \
    as @e[distance=..4,type=!player] run \
damage @s 8 magic
scoreboard players set @a[distance=..4] weapon.effect.shadow 100

advancement revoke @a only weapons:arrows/shadow_arrow