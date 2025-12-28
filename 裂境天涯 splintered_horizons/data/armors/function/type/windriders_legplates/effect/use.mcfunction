advancement revoke @s only armors:type/windriders_legplates/effect/use


execute \
    if entity @s[type=player,tag=!armors.windriders_legplates.effect] run \
return 0

execute \
    if entity @s[advancements={armors:type/windriders_legplates/effect/charge=false}] run \
return 0

execute \
    if score @s armor.windriders_legplates.leggings.effect_delay matches 1.. run \
return 0

summon area_effect_cloud ~ ~1 ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:5,Tags:["armor.windriders_legplates.effect"]}

execute \
    as @n[type=!#minecraft:dummy_mob,type=!player,distance=..50] at @s \
    if function armors:type/windriders_legplates/effect/detect run \
function armors:type/windriders_legplates/effect/run
tag @s remove armors.windriders_legplates.effect

advancement revoke @s only armors:type/windriders_legplates/effect/charge