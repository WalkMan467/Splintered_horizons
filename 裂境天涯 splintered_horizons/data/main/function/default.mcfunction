execute in minecraft:overworld run tp @s 9999 131 10071 180 0

setworldspawn 9999 131 10071

function players:setup
advancement revoke @a only players:new_player

clear @s
gamemode survival @a
advancement revoke @a only players:new_player
time set midnight
weather clear
difficulty normal
kill @e[tag=system.monument_point.sword]

scoreboard players set #monument.area_1 global.main 0
advancement revoke @a only weapons:monument/area_1

reload