# BOSS 死亡執行程式
# @s = BOSS
bossbar remove minecraft:monster.boss.broken_moon

execute as @a at @s run function monsters:bossfight/chapter_2/reset_player_die

summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["monster.death_particle.1","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0}

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

function monsters:chapter_2/broken_moon/4/terrain/false

schedule function story:chapter_2/bossfight/2/0 1t

scoreboard players set #bossfight.chapter_2.act.setup global.main 0

fill 1717 101 878 1725 108 886 air
