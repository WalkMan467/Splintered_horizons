# 距離玩家過遠執行指令

bossbar remove minecraft:monster.boss.broken_moon

execute as @a at @s run function monsters:bossfight/chapter_2/reset_player_die

setblock 1721 103 882 air replace

function animated_java:boss_1/remove/all

function story:chapter_2/stop

scoreboard players set story.chapter_2.bossfight.ml story.chapter_2 1


scoreboard players set abyss_soulcutter monster.boss.spawn 1

tag @a remove monsters.broken_moon.1.target
tag @a remove monster.broken_moon.skill.3.player_sun

scoreboard players reset @a monster.broken_moon.skill.3.player_timer
scoreboard players reset @a monster.broken_moon.skill.3.count



scoreboard players set #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.count 0
scoreboard players set #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.player_timer 0
scoreboard players reset @a monster.broken_moon.skill.4.player_timer

execute as @e[type=bogged,tag=monster.broken_moon.4.monster] at @s run function monsters:chapter_2/broken_moon/4/remove_monster


kill @e[tag=monster.broken_moon.skill.3.player_sun,type=area_effect_cloud]

tp 000000d4-0000-0002-0000-000100000002 ~ -255 ~
kill 000000d4-0000-0002-0000-000100000002

scoreboard players set #boss_area.chapter_2 global.main 0

stopsound @a[distance=..65] record

function monsters:chapter_2/broken_moon/4/terrain/false

scoreboard players set @a monster.broken_moon.player_die 0

fill 1717 101 878 1725 108 886 air
