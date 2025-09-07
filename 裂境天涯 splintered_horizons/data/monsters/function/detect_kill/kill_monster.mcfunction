# If the death detection Marker contains the boss name in its data, it means resetting the basic settings of that BOSS after the BOSS is killed by the player

    # Use macros to avoid exhaustive enumeration issues

    execute on passengers run data modify storage death_temp name set from entity @s data.Death
    execute on passengers if data entity @s data.Death on vehicle if entity @p[distance=..60] run function monsters:detect_kill/run with storage death_temp
    execute on passengers as @s[type=marker,tag=monster.marker] run kill @s


# Kill the death detection Marker

    execute on passengers run kill @s