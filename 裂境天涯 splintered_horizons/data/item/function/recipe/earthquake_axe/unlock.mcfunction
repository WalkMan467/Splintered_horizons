advancement revoke @s only item:recipe/earthquake_axe


execute \
    if score #sys.forging_table.earthquake_axe sys.forging_table.recipes matches 1.. run \
return 0
clear @s *[custom_data~{type:"recipe",id:"earthquake_axe"}]

scoreboard players set #sys.forging_table.earthquake_axe sys.forging_table.recipes 1

execute \
    as @a at @s run \
playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 0.75 1

execute \
    as @a at @s run \
playsound minecraft:entity.ender_eye.death voice @s ~ ~1 ~ 1 0.5

execute \
    as @a at @s run \
playsound minecraft:entity.firework_rocket.twinkle voice @s ~ ~1 ~ 0.75 1

tellraw @a [{"translate": "sys.forging_table.unlock.1","color":"white","bold": false},{"translate":"weapon.earthquake_axe","color":"#7a0000","bold": true},{"translate":"sys.forging_table.unlock.2","color":"white","bold": false}]


tellraw @a [{"text":"\n"}]

tellraw @a [{"translate":"weapon.earthquake_axe","color":"#7a0000","italic":false,"bold":true}]
tellraw @a [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.finality_ingot","color":"dark_red","italic":false,"font": "minecraft:default"},{"text": "*8","font": "minecraft:default"}]
tellraw @a [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.iron_axe","color":"white","italic":false,"font": "minecraft:default"},{"text": "*1","font": "minecraft:default"}]