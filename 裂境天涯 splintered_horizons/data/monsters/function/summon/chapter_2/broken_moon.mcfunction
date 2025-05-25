execute unless score #difficulty global.main matches 1.. run return 0

bossbar add monster.boss.broken_moon [{"bold":true,"color":"dark_red","italic":false,"translate":"monsters.broken_moon","fallback": "「Broken Moon」 Larsis"}]
bossbar add monster.boss.broken_moon.passive [{"bold":true,"color":"dark_aqua","italic":false,"translate":"monsters.broken_moon.mana","fallback": "Mana"}]

bossbar set minecraft:monster.boss.broken_moon color red
bossbar set minecraft:monster.boss.broken_moon max 300
summon stray 1721 101 882 {Glowing:1b,DeathLootTable:"-",Health:300f,Tags:["hide_skill_tip","monster","monsters.broken_moon","monsters.chapter_2","monsters.spawn","team.light"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/broken_moon"}}],CustomName:{"bold":true,"color":"dark_red","fallback":"「Broken Moon」 Larsis","italic":false,"translate":"monsters.broken_moon"},equipment:{feet:{id:"minecraft:chainmail_boots",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:flow"}}},legs:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:tide"}}},chest:{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:flow"}}},head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:tooltip_display":{hidden_components:["unbreakable"]},"minecraft:unbreakable":{},"minecraft:equippable":{slot:"head",asset_id:"minecraft:air"}}},mainhand:{id:"minecraft:iron_sword",count:1},offhand:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:slowness"}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:0},{id:"minecraft:max_health",base:300},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:step_height",base:1}]}

scoreboard players set @n[tag=monsters.spawn,tag=monsters.broken_moon] monster.broken_moon.skill.1.cd 15
scoreboard players set max monster.broken_moon.skill.1.cd 25
scoreboard players set max monster.broken_moon.skill.3.player_timer 5

scoreboard players set @n[tag=monsters.spawn,tag=monsters.broken_moon] monster.broken_moon.skill.3.cd 50
scoreboard players set max monster.broken_moon.skill.3.cd 60
scoreboard players set @n[tag=monsters.spawn,tag=monsters.broken_moon] monster.broken_moon.skill.4.cd 5
scoreboard players set max monster.broken_moon.skill.4.cd 55

tag @a remove monster.broken_moon.skill.4.death_protection



stopsound @a[distance=..60] record
execute as @a[distance=..60] at @s run playsound minecraft:bgm.scott_buckley_the_rise record @s ~ ~0.5 ~ 1 1

tag @e[tag=monsters.spawn] remove monsters.spawn

function monsters:chapter_2/broken_moon/4/terrain/false