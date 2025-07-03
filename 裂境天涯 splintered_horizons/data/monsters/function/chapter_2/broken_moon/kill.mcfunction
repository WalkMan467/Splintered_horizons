# BOSS 死亡執行程式
# @s = BOSS
bossbar remove minecraft:monster.boss.broken_moon

execute as @a at @s run function monsters:bossfight/chapter_2/reset_player_die

summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["monster.death_particle.1","summon"],Particle:{type:"block",block_state:"air"},Radius:0}

scoreboard players set abyss_soulcutter monster.boss.spawn 0

bossbar remove minecraft:monster.boss.abyss_soulcutter

function animated_java:boss_1/remove/all

function story:chapter_2/stop

scoreboard players set story.chapter_2.bossfight.ml story.chapter_2 1



tag @a remove monsters.broken_moon.1.target
tag @a remove monster.broken_moon.skill.3.player_sun

scoreboard players reset @a monster.broken_moon.skill.3.player_timer
scoreboard players reset @a monster.broken_moon.skill.3.count

scoreboard players set #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.count 0
scoreboard players set #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.player_timer 0
scoreboard players reset @a monster.broken_moon.skill.4.player_timer

kill @e[tag=monster.broken_moon.skill.3.player_sun,type=area_effect_cloud]

execute as @e[type=bogged,tag=monster.broken_moon.4.monster] at @s run function monsters:chapter_2/broken_moon/4/remove_monster

execute as @a run function music:chapter_2/bossfight/2/reset

scoreboard players set abyss_soulcutter monster.boss.spawn 0

summon item ~ ~0.5 ~ {Glowing:1b,Motion:[0.0f,0.25f,0.0f],Item:{id:"minecraft:stone_sword",count:1,components:{"minecraft:item_name":{"bold":true,"color":"#00DD00","italic":false,"translate":"weapon.silvaverdis"},"minecraft:lore":[{"color":"dark_gray","italic":false,"translate":"weapon.silvaverdis.type"},{"color":"blue","italic":false,"translate":"weapon.silvaverdis.story.1"},{"color":"blue","italic":false,"translate":"weapon.silvaverdis.story.2"}],"minecraft:attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:6,operation:"add_value",slot:"mainhand"},{id:"base_attack_speed",type:"attack_speed",amount:-2.3,operation:"add_value",slot:"mainhand"}],"minecraft:max_stack_size":1,"minecraft:unbreakable":{},"minecraft:item_model":"sword/silvaverdis/1","minecraft:custom_data":{rc:1b,type:"sword",rarity:"rare",weapon:"silvaverdis",monument:2b}}}}

function monsters:chapter_2/broken_moon/4/terrain/false

schedule function story:chapter_2/bossfight/2/0 1t

scoreboard players set #bossfight.chapter_2.act.setup global.main 0

fill 1717 101 878 1725 108 886 air
