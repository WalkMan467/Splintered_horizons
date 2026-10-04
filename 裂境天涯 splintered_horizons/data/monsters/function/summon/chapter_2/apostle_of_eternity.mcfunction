# ===================================================
# 召喚 「永劫」的使徒 / summon apostle of eternity

    ## Guide [ function monsters:summon/chapter_2/apostle_of_eternity ] >>> 召喚 「永劫」的使徒 / summon apostle of eternity

# ===================================================

execute \
    unless score #difficulty global.main matches 1.. run \
return 0

summon zombie ~ ~ ~ {Health:45f,Tags:["monsters.spawn","monsters.apostle_of_eternity","monsters.chapter_2","monster"],CustomName:{"bold":true,"color":"gold","italic":false,"translate":"monster.apostle_of_eternity"},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:equippable":{slot:"feet",asset_id:"netherite"},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:tide"}}},legs:{id:"minecraft:leather_leggings",count:1,components:{enchantments:{"armors:creeper_explosion_immunity":1,"armors:resilient":1},enchantment_glint_override:false,"minecraft:equippable":{slot:"legs",asset_id:"netherite"},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",asset_id:"netherite"},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"}}},head:{id:"minecraft:beacon",count:1,components:{"minecraft:enchantments":{"minecraft:mending":1}}},mainhand:{id:"minecraft:apple",components:{"item_model":"sword/grip_of_withering/1"},count:1},offhand:{id:"minecraft:clock",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:attack_damage",base:14},{id:"armor",base:12},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:scale",base:1.25}]}

execute \
    store result score @n[tag=monsters.spawn,type=zombie] monster.skill.cast.at run \
random value 60..100
scoreboard players operation @n[tag=monsters.spawn,type=zombie] monster.skill.cast.dur = @n[tag=monsters.spawn,type=zombie] monster.skill.cast.at
scoreboard players operation @n[tag=monsters.spawn,type=zombie] monster.skill.cast.at += #gametime global.main
scoreboard players reset @n[tag=monsters.spawn,type=zombie] monster.skill.cast.tip

tag @n[tag=monsters.spawn,type=zombie] remove monsters.spawn