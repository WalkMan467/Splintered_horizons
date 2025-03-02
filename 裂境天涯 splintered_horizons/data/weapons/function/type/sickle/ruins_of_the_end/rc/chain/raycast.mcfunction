scoreboard players set #temp weapon.ruins_of_the_end.effect.range 25

summon area_effect_cloud ~ ~ ~ {Tags:["weapon.ruins_of_the_end.effect.chain.main"]}

tp @e[type=area_effect_cloud,tag=weapon.ruins_of_the_end.effect.chain.main] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=weapon.ruins_of_the_end.effect.chain.main] run function weapons:type/sickle/ruins_of_the_end/rc/chain/detect
kill @e[type=area_effect_cloud,tag=weapon.ruins_of_the_end.effect.chain.main]