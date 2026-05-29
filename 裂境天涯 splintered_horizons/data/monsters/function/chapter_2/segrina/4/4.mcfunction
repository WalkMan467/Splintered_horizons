# 附加無敵效果

scoreboard players set @s monster.segrina.skill.4.invincible 100
effect give @s glowing 5 255 true

# 附加無敵
execute \
    if items entity @s armor.chest * run \
item modify entity @s armor.chest [{function:"minecraft:set_enchantments",enchantments:{"monsters:chapter_2/segrina/4/damage_immunity":1,binding_curse:1},add:0b}]

execute \
    unless items entity @s armor.chest * run \
loot replace entity @s armor.chest loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:leather_chestplate",functions:[{function:"minecraft:set_custom_data",tag:{invincible:true}},{function:"minecraft:set_components",components:{"minecraft:enchantment_glint_override":false,"minecraft:equippable":{slot:"chest",asset_id:"air"}}},{function:"minecraft:set_enchantments",enchantments:{"monsters:chapter_2/segrina/4/damage_immunity":1,"minecraft:binding_curse":1},add:false}]}]}]}

execute \
    unless score @s monster.segrina.skill.4.invincible.display.id matches -1073741823..1073741823 \
    store result score @s monster.segrina.skill.4.invincible.display.id run \
random value -1073741823..1073741823

execute \
    store result storage monster.segrina.skill.4.invincible temp.id int 1 run \
scoreboard players get @s monster.segrina.skill.4.invincible.display.id

function monsters:chapter_2/segrina/4/bossbar/summon with storage monster.segrina.skill.4.invincible temp

# 更新一下無敵狀態的顯示
function monsters:chapter_2/segrina/4/7