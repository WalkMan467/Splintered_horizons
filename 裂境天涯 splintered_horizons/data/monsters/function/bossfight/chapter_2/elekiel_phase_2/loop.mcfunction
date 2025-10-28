schedule function monsters:bossfight/chapter_2/elekiel_phase_2/loop 1t

# Detect boss battle end; remove player death detection
execute as @a at @s unless score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1.. run function monsters:bossfight/chapter_2/elekiel_phase_2/reset_player_die
execute unless score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1.. run return 0

gamemode spectator @a[tag=chapter_2.elekiel_phase_2.lose]

execute unless entity @a[tag=!chapter_2.elekiel_phase_2.lose] if score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1.. run function monsters:bossfight/chapter_2/elekiel_phase_2/lose