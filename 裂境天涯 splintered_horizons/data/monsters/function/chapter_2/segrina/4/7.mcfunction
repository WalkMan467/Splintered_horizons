execute \
    if score @s monster.segrina.skill.4.invincible matches 1.. run \
scoreboard players remove @s monster.segrina.skill.4.invincible 1

execute \
    if score @s monster.segrina.skill.4.invincible matches 1.. run \
particle dust{color:[0.729,0.729,0.729],scale:1.0} ~ ~1 ~ 0.5 0.5 0.5 0 5 force @a

execute \
    if score @s monster.segrina.skill.4.invincible matches 1.. \
    if items entity @s armor.chest * run \
item modify entity @s armor.chest [{function:"minecraft:set_enchantments",enchantments:{"monsters:chapter_2/segrina/4/damage_immunity":1,binding_curse:1},add:0b}]

execute \
    if score @s monster.segrina.skill.4.invincible matches 1.. \
    unless items entity @s armor.chest * run \
loot replace entity @s armor.chest loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:leather_chestplate",functions:[{function:"minecraft:set_custom_data",tag:{invincible:true}},{function:"minecraft:set_components",components:{"minecraft:enchantment_glint_override":false,"minecraft:equippable":{slot:"chest",asset_id:"air"}}},{function:"minecraft:set_enchantments",enchantments:{"monsters:chapter_2/segrina/4/damage_immunity":1,"minecraft:binding_curse":1},add:false}]}]}]}

execute \
    unless score @s monster.segrina.skill.4.invincible matches 1.. \
    if items entity @s armor.chest *[!custom_data~{invincible:true}] run \
item modify entity @s armor.chest [{function:"minecraft:set_enchantments",enchantments:{"monsters:chapter_2/segrina/4/damage_immunity":0,binding_curse:0},add:0b}]

execute \
    unless score @s monster.segrina.skill.4.invincible matches 1.. \
    if items entity @s armor.chest *[custom_data~{invincible:true}] run \
clear @s leather_chestplate[custom_data~{invincible:true}]

execute \
    unless score @s monster.segrina.skill.4.invincible matches 1.. run \
scoreboard players reset @s monster.segrina.skill.4.invincible

execute \
    as @a \
    if score @s monster.segrina.skill.4.invincible matches 1.. \
    store result storage monster.segrina.skill.4.invincible temp.id int 1 run \
scoreboard players get @s monster.segrina.skill.4.invincible.display.id

execute \
    as @a \
    if score @s monster.segrina.skill.4.invincible matches 1.. run \
function monsters:chapter_2/segrina/4/bossbar/update with storage monster.segrina.skill.4.invincible temp