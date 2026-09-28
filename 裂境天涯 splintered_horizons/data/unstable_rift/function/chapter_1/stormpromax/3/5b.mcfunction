
scoreboard objectives add gamemode dummy

tp @s ~ ~1000 ~
scoreboard players set @s gamemode 0
scoreboard players set @s[gamemode=creative] gamemode 1
scoreboard players set @s[gamemode=adventure] gamemode 2
scoreboard players set @s[gamemode=spectator] gamemode 3
gamemode creative

execute at @s facing entity @n[tag=temp] feet rotated ~ 0 anchored eyes positioned ^ ^ ^1 summon end_crystal run damage @s 1
execute at @s facing entity @n[tag=temp] feet rotated ~ 0 anchored eyes positioned ^ ^ ^1 summon end_crystal run damage @s 1

gamemode survival @s[scores={gamemode=0}]
gamemode creative @s[scores={gamemode=1}]
gamemode adventure @s[scores={gamemode=2}]
gamemode spectator @s[scores={gamemode=3}]
tp @s ~ ~ ~

scoreboard objectives remove gamemode