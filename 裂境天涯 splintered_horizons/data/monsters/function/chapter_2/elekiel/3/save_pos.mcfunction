execute if entity @s[type=player,tag=chapter_2.elekiel.lose] run return 0

summon area_effect_cloud ~ ~ ~ {Duration:150,custom_particle:{type:"block",block_state:"minecraft:air"},NoGravity:1b,Radius:0f,Tags:["monster.elekiel.3.player_pos.save"]}

scoreboard players operation @n[type=area_effect_cloud,tag=monster.elekiel.3.player_pos.save] monster.elekiel.3.player_pos.save.timer = @s player.id

scoreboard players set .global monster.elekiel.3.player_pos.save.timer 5