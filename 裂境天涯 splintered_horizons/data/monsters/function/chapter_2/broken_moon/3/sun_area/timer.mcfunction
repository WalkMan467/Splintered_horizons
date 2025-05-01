execute unless score #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.player_timer matches 0.. run return 0

scoreboard players remove #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.player_timer 1

execute unless score #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.count matches 1.. run return 0

scoreboard players reset #monster.broken_moon.skill.3.player_sun particle
execute as @e[tag=monster.broken_moon.skill.3.player_sun,type=area_effect_cloud] at @s rotated ~ 0 run function monsters:chapter_2/broken_moon/3/sun_area/fx

execute if score #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.player_timer matches 1.. if score #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.count matches 1.. run return 0


scoreboard players remove #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.count 1
scoreboard players operation #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.player_timer = max monster.broken_moon.skill.3.player_timer

execute as @n[tag=monsters.broken_moon,type=stray] at @s run function monsters:chapter_2/broken_moon/3/sun_area/summon

execute as @e[tag=monster.broken_moon.skill.3.player_sun,type=area_effect_cloud] at @s run tag @a[distance=..4] add monster.broken_moon.skill.3.player_sun.in

execute positioned 1721 101 882 as @a[distance=..60,tag=!monster.broken_moon.skill.3.player_sun.in,gamemode=!spectator] run damage @s 5 armors:type/black_hole/damage

tag @a remove monster.broken_moon.skill.3.player_sun.in