# ===================================================
# 召喚 深淵斷魂者 / summon abyssal soulreaper

    ## Guide [ function monsters:summon/chapter_1/abyssal_soulreaper ] >>> 召喚 深淵斷魂者 / summon abyssal soulreaper
    ## Guide [ function spawner:type/chapter_1/abyssal_soulreaper/sunmmon ] >>> sunmmon

# ===================================================

execute \
    unless score #difficulty global.main matches 1.. run \
return 0

summon zombie ~ ~ ~ {Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"monsters:chapter_1/abyssal_soulreaper"}}],CustomNameVisible:1b,Health:20f,IsBaby:0b,CanBreakDoors:1b,Tags:["monsters.spawn","monster.abyssal_soulreaper","monsters.chapter_1","monster"],CustomName:{"bold":true,"color":"dark_red","fallback":"深淵斷魂者","italic":false,"translate":"monster.abyssal_soulreaper"},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{enchantments:{"armors:creeper_explosion_immunity":1},enchantment_glint_override:false,"minecraft:equippable":{slot:"feet",asset_id:"air"}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:equippable":{slot:"legs",asset_id:"abyssal_soulreaper"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",asset_id:"abyssal_soulreaper"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc1ODQ0MjA4OTgxNCwKICAicHJvZmlsZUlkIiA6ICJiOWIzY2RlZmIyZmQ0YWY1ODQxMGViZWZjY2ZmYTBhYiIsCiAgInByb2ZpbGVOYW1lIiA6ICJpbnRlcnNlY2F0byIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8zMjM0OGFlOWZjOTlkZGRkZTFlNGQxNjViZDgxZjhiYTFjZjE0OTk0ZmZjNjU0ZDk3N2Y5NDZkM2Y2NzUzZmFjIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]}}},mainhand:{id:"minecraft:wooden_sword",count:1,components:{"attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:4.0,operation:"add_value",slot:"mainhand"}],"enchantment_glint_override":false,"enchantments":{"monsters:chapter_1/abyssal_soulreaper/weapon":1},"minecraft:item_model":"halberd/iron_halberd/1"}},offhand:{id:"minecraft:disc_fragment_5",count:1,components:{"minecraft:item_model":"minecraft:shield"}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:scale",base:1.25},{id:"minecraft:attack_damage",base:2}]}

execute \
    store result score @n[tag=monsters.spawn,type=zombie] monster.skill.cast.at run \
random value 60..100
scoreboard players operation @n[tag=monsters.spawn,type=zombie] monster.skill.cast.dur = @n[tag=monsters.spawn,type=zombie] monster.skill.cast.at
scoreboard players operation @n[tag=monsters.spawn,type=zombie] monster.skill.cast.at += #gametime global.main
scoreboard players reset @n[tag=monsters.spawn,type=zombie] monster.skill.cast.tip

tag @n[tag=monsters.spawn,type=zombie] remove monsters.spawn