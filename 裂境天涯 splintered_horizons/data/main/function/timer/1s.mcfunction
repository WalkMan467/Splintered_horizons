# @s = Player
execute as @a at @s run function main:timer/guide_player

# @s = Entity (No Player)
execute as @e[type=!player] run function main:timer/guide_entity

schedule function main:timer/1s 1s