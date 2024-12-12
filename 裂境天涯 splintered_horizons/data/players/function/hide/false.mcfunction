gamemode adventure @s[scores={player.hide=1,player.gamemode=1}]
gamemode creative @s[scores={player.hide=1,player.gamemode=2}]
gamemode spectator @s[scores={player.hide=1,player.gamemode=3}]
gamemode survival @s[scores={player.hide=1,player.gamemode=4}]

execute as @s[scores={player.hide=1..}] if score @s player.id = @n[tag=player.hide.camera,limit=1,type=area_effect_cloud] player.id run spectate @n[tag=player.hide.camera,limit=1,type=area_effect_cloud]