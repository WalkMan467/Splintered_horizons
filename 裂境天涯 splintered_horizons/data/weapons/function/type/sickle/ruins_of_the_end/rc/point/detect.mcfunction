scoreboard players remove #temp weapon.ruins_of_the_end.effect.range 1

execute if score #temp weapon.ruins_of_the_end.effect.range matches 2.. positioned ^ ^ ^0.5 if block ~ ~ ~ #penetrate run function weapons:type/sickle/ruins_of_the_end/rc/point/detect
execute if score #temp weapon.ruins_of_the_end.effect.range matches 2.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #penetrate run summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["weapon.ruins_of_the_end.effect.chain.final.point"]}
execute if score #temp weapon.ruins_of_the_end.effect.range matches 2.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #penetrate run function particle:space_crack/use

execute if score #temp weapon.ruins_of_the_end.effect.range matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #penetrate run function weapons:type/sickle/ruins_of_the_end/rc/point/final