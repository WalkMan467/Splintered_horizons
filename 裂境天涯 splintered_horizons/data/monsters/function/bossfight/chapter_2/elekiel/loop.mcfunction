schedule function monsters:bossfight/chapter_2/elekiel/loop 1t

tag @a[tag=chapter_2.elekiel.lose] remove monsters.elekiel.2.vampire_flower.target

# Detect boss battle end; remove player death detection
execute as @a at @s unless score #boss_area.chapter_2.elekiel global.main matches 1.. run function monsters:bossfight/chapter_2/elekiel/reset_player_die
execute unless score #boss_area.chapter_2.elekiel global.main matches 1.. run return 0

gamemode spectator @a[tag=chapter_2.elekiel.lose]
execute as 00000100-0000-0080-0000-008000000001 at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/normal as @a[tag=chapter_2.elekiel.lose] positioned 912 60 2018 unless entity @s[distance=..40] run tp @s 1109 82 373 0 0
execute as 00000100-0000-0080-0000-008000000001 at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire as @a[tag=chapter_2.elekiel.lose] positioned 912 60 3018 unless entity @s[distance=..40] run tp @s 912 60 3018 0 0

scoreboard players set @a[tag=chapter_2.elekiel.lose] player.animation.lock 10
execute unless entity @a[tag=!chapter_2.elekiel.lose] if score #boss_area.chapter_2.elekiel global.main matches 1.. run function monsters:bossfight/chapter_2/elekiel/lose