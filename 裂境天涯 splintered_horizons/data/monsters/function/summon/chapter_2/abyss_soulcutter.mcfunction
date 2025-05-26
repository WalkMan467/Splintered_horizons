execute unless score #difficulty global.main matches 1.. run return 0

scoreboard players set abyss_soulcutter monster.boss.spawn 1

summon stray 1721 101 882 {UUID:[I; 20, 20 , 1, 25],CustomNameVisible:1b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,Health:600f,Rotation:[0F,0F],Tags:["boss","hide_skill_tip","monster","monsters.abyss_soulcutter","monsters.chapter_2","monsters.spawn"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/abyss_soulcutter"}}],CustomName:{"bold":true,"color":"dark_red","fallback":"「Broken Moon」 Larsis","italic":false,"translate":"monsters.abyss_soulcutter"},equipment:{head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:equippable":{slot:"head",asset_id:"air"},"minecraft:unbreakable":{}}}},drop_chances:{head:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:explosion_knockback_resistance",base:1},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:300},{id:"minecraft:movement_speed",base:0.27},{id:"minecraft:scale",base:1}]}

bossbar add monster.boss.abyss_soulcutter [{"bold":true,"color":"dark_red","italic":false,"translate":"monsters.abyss_soulcutter","fallback": "「Broken Moon」 Larsis"}]
execute store result bossbar minecraft:monster.boss.abyss_soulcutter max run attribute 00000014-0000-0014-0000-000100000019 max_health get
bossbar set minecraft:monster.boss.abyss_soulcutter color red

setblock 1721 103 882 air replace

execute as 00000014-0000-0014-0000-000100000019 at @s run function animated_java:boss_1/summon {args: {animation: 'spawn_loop', start_animation: true}}

scoreboard players set 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter.state_machine.state -10
scoreboard players display name 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter.state_machine.state {"bold":true,"color":"dark_red","fallback":"「Broken Moon」 Larsis","italic":false,"translate":"monsters.abyss_soulcutter"}
scoreboard players display name 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter {"bold":true,"color":"dark_red","fallback":"「Broken Moon」 Larsis","italic":false,"translate":"monsters.abyss_soulcutter"}
scoreboard players display name 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter.state_machine.action {"bold":true,"color":"dark_red","fallback":"「Broken Moon」 Larsis","italic":false,"translate":"monsters.abyss_soulcutter"}

scoreboard players display numberformat 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter.state_machine.state fixed {"translate":"state_machine.idle","fallback": "[等待玩家]","color":"gold"}

scoreboard players set 00000014-0000-0014-0000-000100000019 monster.abyss_soulcutter.state_machine.action 0

tag @e[tag=monsters.spawn] remove monsters.spawn