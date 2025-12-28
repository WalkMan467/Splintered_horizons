
execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 1 run \
tellraw @s {"translate": "main.start.text.1","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 2 run \
tellraw @s {"translate": "main.start.text.2","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 3 run \
tellraw @s {"translate": "main.start.text.3","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 4 run \
tellraw @s {"translate": "main.start.text.4","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 5 run \
tellraw @s {"translate": "main.start.text.5","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 6 run \
tellraw @s {"translate": "main.start.text.6","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 7 run \
tellraw @s {"translate": "main.start.text.7","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 8 run \
tellraw @s {"translate": "main.start.text.8","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 9 run \
tellraw @s {"translate": "main.start.text.9","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 10 run \
tellraw @s {"translate": "main.start.text.10","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 11 run \
tellraw @s {"translate": "main.start.text.11","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 12 run \
tellraw @s {"translate": "main.start.text.12","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 13 run \
tellraw @s {"translate": "main.start.text.13","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 14 run \
tellraw @s {"translate": "main.start.text.14","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 15 run \
tellraw @s {"translate": "main.start.text.15","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 16 run \
tellraw @s {"translate": "main.start.text.16","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 17 run \
tellraw @s {"translate": "main.start.text.17","fallback": ""}

execute \
    as @a \
    if dimension world_area:main/game_lobby \
    if score #main.map_lobby.act global.main matches 18 run \
tellraw @s {"translate": "main.start.text.18","fallback": ""}


execute \
    if score #main.map_lobby.act global.main matches 19 run \
schedule function main:map_lobby/act/title/0 1t

execute \
    if score #main.map_lobby.act global.main matches 19 \
    as 00000079-0000-0018-0000-000200000209 \
    on passengers run \
kill @s

execute \
    if score #main.map_lobby.act global.main matches 19 run \
kill 00000079-0000-0018-0000-000200000209

data remove entity @s interaction


execute \
    unless score #main.map_lobby.act global.main matches 1..19 run \
return 0

scoreboard players add #main.map_lobby.act global.main 1
particle sonic_boom ~ ~0.5 ~ 0 0 0 0 1 force @a
playsound minecraft:item.trident.return voice @a ~ ~0.5 ~ 1 1
playsound minecraft:item.hoe.till voice @a ~ ~0.5 ~ 1 1