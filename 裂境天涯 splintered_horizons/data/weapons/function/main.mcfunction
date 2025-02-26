# Guide / 導向

    execute as @s[type=player,scores={drop=1..}] as @n[type=item,limit=1] if items entity @s contents *[custom_data~{type:"drop_weapon"}] run function weapons:type with entity @s Item.components."minecraft:custom_data"
    scoreboard players reset @s[type=player,scores={drop=1..}] drop

    # wind sword
    execute as @s[type=player,tag=wind_sword.user] at @s run function weapons:type/sword/wind_sword/main
    execute as @s[type=item_display,tag=wind_sword.wind] at @s run function weapons:type/sword/wind_sword/wind/main

    function weapons:type/arrows/ground_detect/main
    function weapons:type/sword/grip_of_withering/main
    function weapons:type/sword/morning_light/main
    