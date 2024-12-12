# Guide / 導向

    attribute @s[type=player,scores={player.defense=3..10}] minecraft:knockback_resistance modifier add defense 9999 add_value
    effect give @s[type=player,scores={player.defense=3..10}] resistance 1 255 true

    effect clear @s[type=player,scores={player.defense=0}] resistance
    attribute @s[type=player,scores={player.defense=0}] minecraft:knockback_resistance modifier remove defense

    effect clear @s[type=player,scores={player.defense=10..}] resistance
    attribute @s[type=player,scores={player.defense=10..}] minecraft:knockback_resistance modifier remove defense

    scoreboard players set @s[type=player,scores={player.defense.timer=0,player.defense=1..}] player.defense 0

    execute if data entity @s {HurtTime:9s} if score @s player.defense matches 3..10 run function weapons:defense

    execute as @s[type=player,scores={drop=1..}] at @s run function weapons:type with entity @n[type=item,limit=1,nbt={Item:{components:{"minecraft:custom_data":{type:"drop_weapon"}}}}] Item.components."minecraft:custom_data"
    scoreboard players reset @s[type=player,scores={drop=1..}] drop

    # wind sword
    execute as @s[type=player,tag=wind_sword.user] at @s run function weapons:type/sword/wind_sword/main
    execute as @s[type=item_display,tag=wind_sword.wind] at @s run function weapons:type/sword/wind_sword/wind/main


    function weapons:type/arrows/ground_detect/main
    function weapons:timer_t