scoreboard players set #temp weapon.ruins_of_the_finality.effect.range 25

summon area_effect_cloud ~ ~ ~ {Tags:["weapon.ruins_of_the_finality.effect.chain.main"]}

tp @e[type=area_effect_cloud,tag=weapon.ruins_of_the_finality.effect.chain.main] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=weapon.ruins_of_the_finality.effect.chain.main] run function weapons:type/scythe/ruins_of_the_finality/rc/chain/detect
kill @e[type=area_effect_cloud,tag=weapon.ruins_of_the_finality.effect.chain.main]