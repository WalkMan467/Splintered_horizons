# 執行者 : boss

# self
tag @s add stormpm.3
tag @s add stormpm.3.flytosky
tag @s[tag=stormpm.3.already1] add stormpm.3.already2
tag @s add stormpm.3.already1
execute if block ~ ~ ~ water run tp @s ~ 282 ~
attribute @s generic.gravity base set -0.1

scoreboard players set #stormpm.3.duration global.main 0

function monsters:stormpromax/cast/end