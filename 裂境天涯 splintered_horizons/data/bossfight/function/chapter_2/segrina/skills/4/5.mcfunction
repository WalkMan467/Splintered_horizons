# 清除無敵狀態

execute \
    unless score @s monster.segrina.skill.4.invincible matches 0.. run \
return 0

effect clear @s glowing

scoreboard players reset @s monster.segrina.skill.4.invincible

# 移除無敵
execute \
    if items entity @s armor.chest *[!custom_data~{invincible:true}] run \
item modify entity @s armor.chest [{type:"minecraft:set_enchantments",enchantments:{"bossfight:chapter_2/segrina/skills/4/damage_immunity":0,binding_curse:0},add:0b}]

execute \
    if items entity @s armor.chest *[custom_data~{invincible:true}] run \
clear @s leather_chestplate[custom_data~{invincible:true}]

execute \
    store result storage monster.segrina.skill.4.invincible temp.id int 1 run \
scoreboard players get @s monster.segrina.skill.4.invincible.display.id

function bossfight:chapter_2/segrina/skills/4/bossbar/remove with storage monster.segrina.skill.4.invincible temp