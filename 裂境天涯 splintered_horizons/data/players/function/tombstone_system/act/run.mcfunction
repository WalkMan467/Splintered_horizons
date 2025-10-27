tag @s add player.tombstone.temp
execute on target unless score @s player.id = @n[distance=..3,type=interaction,tag=player.tombstone,tag=player.tombstone.temp] player.tombstone_system.id run function players:tombstone_system/act/fail
execute on target unless score @s player.id = @n[distance=..3,type=interaction,tag=player.tombstone,tag=player.tombstone.temp] player.tombstone_system.id run return 0
execute on target if score @s player.id = @n[distance=..3,type=interaction,tag=player.tombstone,tag=player.tombstone.temp] player.tombstone_system.id run function players:tombstone_system/act/return

execute as @s[type=interaction,tag=player.tombstone.temp,tag=player.tombstone] on passengers run kill @s[type=block_display]
kill @s[type=interaction,tag=player.tombstone.temp,tag=player.tombstone]