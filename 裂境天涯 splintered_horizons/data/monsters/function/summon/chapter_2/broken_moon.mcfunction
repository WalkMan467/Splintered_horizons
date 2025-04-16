execute unless score #difficulty global.main matches 1.. run return 0

bossbar add monster.boss.broken_moon [{"bold":true,"color":"dark_red","italic":false,"translate":"monsters.broken_moon","fallback": "「Broken Moon」 Larsis"}]
bossbar add monster.boss.broken_moon.passive [{"bold":true,"color":"dark_aqua","italic":false,"translate":"monsters.broken_moon.mana","fallback": "Mana"}]

bossbar set minecraft:monster.boss.broken_moon color red
bossbar set minecraft:monster.boss.broken_moon.passive color blue
bossbar set minecraft:monster.boss.broken_moon max 300
bossbar set minecraft:monster.boss.broken_moon.passive max 10
bossbar set minecraft:monster.boss.broken_moon.passive style notched_10

summon stray ~ ~ ~ {DeathLootTable:"-",Health:300f,Tags:["hide_skill_tip","monster","monsters.broken_moon","monsters.chapter_2","monsters.spawn","team.light"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/broken_moon"}}],CustomName:'{"bold":true,"color":"dark_red","fallback":"「Broken Moon」 Larsis","italic":false,"translate":"monsters.broken_moon"}',HandItems:[{id:"minecraft:iron_sword",count:1},{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:slowness"}}}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:chainmail_boots",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:flow"}}},{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:tide"}}},{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:flow"}}},{id:"minecraft:beacon",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:mending":1},show_in_tooltip:false}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:max_health",base:300},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:step_height",base:1}]}

scoreboard players set @n[tag=monsters.spawn,tag=monsters.broken_moon] monster.skill.cast.cd 80

scoreboard players set @n[tag=monsters.spawn,tag=monsters.broken_moon] monster.broken_moon.passive 10
scoreboard players set @n[tag=monsters.spawn,tag=monsters.broken_moon] monster.broken_moon.skill.1.cd 5
scoreboard players set max monster.broken_moon.skill.1.cd 10
scoreboard players set max monster.broken_moon.skill.3.player_timer 5

tag @e[tag=monsters.spawn] remove monsters.spawn