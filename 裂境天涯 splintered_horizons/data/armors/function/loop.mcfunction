execute as @s[predicate=armors:type/health/4] run advancement grant @s only armors:type/health/eqipment
execute as @s[predicate=!armors:type/health/4] run advancement grant @s only armors:type/health/take_off

execute as @s[scores={armor.black_hole.boots.effect=1}] at @s positioned ~ ~-1 ~ run function armors:type/black_hole/boots/effect/use

execute if items entity @s armor.feet *[custom_data~{black_hole:1b} | custom_data={black_hole:1}] run advancement grant @s only armors:type/black_hole/boots/eqipment
execute unless items entity @s armor.feet *[custom_data~{black_hole:1b} | custom_data={black_hole:1}] run advancement grant @s only armors:type/black_hole/boots/take_off

execute if score @s armor.black_hole.boots.power matches 10.. run function armors:type/black_hole/boots/main
function armors:type/tai_chis_shadow/main

function armors:timer