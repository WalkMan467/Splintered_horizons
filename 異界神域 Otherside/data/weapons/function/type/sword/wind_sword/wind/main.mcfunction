
# effect
    # speed
tp @s ^ ^ ^0.6

    # dmg
scoreboard players operation #this player.id = @s player.id
execute positioned ~ ~-1.5 ~ as @n[limit=1,type=!#minecraft:dummy_mob,type=!player,distance=..2] at @s run function weapons:type/sword/wind_sword/wind/damage

    # reset
execute if score @s duration matches ..0 run function weapons:type/sword/wind_sword/wind/clear

# particle
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^ ^ ^ 0.1 0.1 0.1 0 5 force @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^0.25 ^ ^ 0.1 0.1 0.1 0 5 force @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^0.5 ^ ^ 0.1 0.1 0.1 0 5 force @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^0.75 ^ ^ 0.1 0.1 0.1 0 5 force @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^1 ^ ^ 0.1 0.1 0.1 0 5 force @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^-0.25 ^ ^ 0.1 0.1 0.1 0 5 force @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^-0.5 ^ ^ 0.1 0.1 0.1 0 5 force @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^-0.75 ^ ^ 0.1 0.1 0.1 0 5 force @a
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 0.75f, to_color: [0.0f, 1.0f, 0.5f]} ^-1 ^ ^ 0.1 0.1 0.1 0 5 force @a