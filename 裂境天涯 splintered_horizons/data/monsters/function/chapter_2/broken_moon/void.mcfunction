# 距離玩家過遠執行指令

bossbar remove minecraft:monster.boss.broken_moon

scoreboard players set abyss_soulcutter monster.boss.spawn 1

tag @a[distance=..65] remove monsters.broken_moon.1.target
tag @a[distance=..65] remove monster.broken_moon.skill.3.player_sun

scoreboard players reset @a monster.broken_moon.skill.3.player_timer
scoreboard players reset @a monster.broken_moon.skill.3.count



scoreboard players set #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.count 0
scoreboard players set #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.player_timer 0
scoreboard players reset @a monster.broken_moon.skill.4.player_timer

execute as @e[type=bogged,tag=monster.broken_moon.4.monster] at @s run function monsters:chapter_2/broken_moon/4/remove_monster


kill @e[tag=monster.broken_moon.skill.3.player_sun,type=area_effect_cloud]


execute if entity @s[type=player] run return 0

tp @s ~ -255 ~
kill @s

stopsound @a[distance=..65] record

function monsters:chapter_2/broken_moon/4/terrain/false