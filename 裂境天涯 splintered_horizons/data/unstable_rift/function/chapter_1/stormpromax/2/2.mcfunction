
data modify entity @s CustomName set value '[{"text": "■■■ ","color": "green"},{"text": "3","color": "white"},{"text": " ■■■","color": "green"}]'

# particle
scoreboard players set #temp global.main 0
execute positioned ~ ~0.1 ~ rotated ~ 0 run function monsters:stormpromax/2/2.par
playsound minecraft:block.bamboo_wood_door.close master @a ~ ~ ~ 0.5 2