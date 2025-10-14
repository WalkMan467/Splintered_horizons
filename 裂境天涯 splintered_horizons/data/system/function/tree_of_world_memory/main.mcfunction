# Player postition guide ( Large Memory Crystal )
    # @s = Players

execute as 00000080-0000-0100-0000-019c00000005 at @s run scoreboard players set @a[distance=..3,gamemode=!spectator] player.actionbar.tree_of_world_memory.1 2

# Large Memory Crystal
execute as 00000080-0000-0100-0000-019c00000005 at @s if entity @n[distance=..3,type=item,nbt={Item:{components:{"minecraft:custom_data":{item:"world_memory_fragments"}}}}] run function system:tree_of_world_memory/crystal/offering