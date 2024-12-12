summon area_effect_cloud ~ ~1 ~ {Tags:["entity.void_arrow.effect"]}
execute at @e[tag=entity.void_arrow.effect] run function weapons:type/arrows/void_arrow/effect/guide

advancement revoke @a only weapons:arrows/void_arrow