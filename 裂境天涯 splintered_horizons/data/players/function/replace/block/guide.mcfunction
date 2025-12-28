tag @s remove player.replace.block
playsound minecraft:entity.item.pickup voice @s ~ ~1 ~ 0.5 0.75

scoreboard players set #player.replace.block.temp global.main 0


execute \
    if items entity @s container.1 #complete_blocks \
    unless items entity @s container.1 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.1

execute \
    if items entity @s container.1 #complete_blocks \
    unless items entity @s container.1 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.1 #complete_blocks \
    unless items entity @s container.1 #excluding_blocks run \
item replace entity @s container.1 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.2 #complete_blocks \
    unless items entity @s container.2 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.2

execute \
    if items entity @s container.2 #complete_blocks \
    unless items entity @s container.2 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.2 #complete_blocks \
    unless items entity @s container.2 #excluding_blocks run \
item replace entity @s container.2 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.3 #complete_blocks \
    unless items entity @s container.3 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.3

execute \
    if items entity @s container.3 #complete_blocks \
    unless items entity @s container.3 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.3 #complete_blocks \
    unless items entity @s container.3 #excluding_blocks run \
item replace entity @s container.3 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.4 #complete_blocks \
    unless items entity @s container.4 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.4

execute \
    if items entity @s container.4 #complete_blocks \
    unless items entity @s container.4 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.4 #complete_blocks \
    unless items entity @s container.4 #excluding_blocks run \
item replace entity @s container.4 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.5 #complete_blocks \
    unless items entity @s container.5 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.5

execute \
    if items entity @s container.5 #complete_blocks \
    unless items entity @s container.5 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.5 #complete_blocks \
    unless items entity @s container.5 #excluding_blocks run \
item replace entity @s container.5 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.6 #complete_blocks \
    unless items entity @s container.6 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.6

execute \
    if items entity @s container.6 #complete_blocks \
    unless items entity @s container.6 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.6 #complete_blocks \
    unless items entity @s container.6 #excluding_blocks run \
item replace entity @s container.6 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.7 #complete_blocks \
    unless items entity @s container.7 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.7

execute \
    if items entity @s container.7 #complete_blocks \
    unless items entity @s container.7 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.7 #complete_blocks \
    unless items entity @s container.7 #excluding_blocks run \
item replace entity @s container.7 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.8 #complete_blocks \
    unless items entity @s container.8 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.8

execute \
    if items entity @s container.8 #complete_blocks \
    unless items entity @s container.8 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.8 #complete_blocks \
    unless items entity @s container.8 #excluding_blocks run \
item replace entity @s container.8 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0


execute \
    if items entity @s container.9 #complete_blocks \
    unless items entity @s container.9 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.9

execute \
    if items entity @s container.9 #complete_blocks \
    unless items entity @s container.9 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.9 #complete_blocks \
    unless items entity @s container.9 #excluding_blocks run \
item replace entity @s container.9 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.10 #complete_blocks \
    unless items entity @s container.10 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.10

execute \
    if items entity @s container.10 #complete_blocks \
    unless items entity @s container.10 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.10 #complete_blocks \
    unless items entity @s container.10 #excluding_blocks run \
item replace entity @s container.10 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.11 #complete_blocks \
    unless items entity @s container.11 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.11

execute \
    if items entity @s container.11 #complete_blocks \
    unless items entity @s container.11 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.11 #complete_blocks \
    unless items entity @s container.11 #excluding_blocks run \
item replace entity @s container.11 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.12 #complete_blocks \
    unless items entity @s container.12 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.12

execute \
    if items entity @s container.12 #complete_blocks \
    unless items entity @s container.12 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.12 #complete_blocks \
    unless items entity @s container.12 #excluding_blocks run \
item replace entity @s container.12 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.13 #complete_blocks \
    unless items entity @s container.13 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.13

execute \
    if items entity @s container.13 #complete_blocks \
    unless items entity @s container.13 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.13 #complete_blocks \
    unless items entity @s container.13 #excluding_blocks run \
item replace entity @s container.13 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.14 #complete_blocks \
    unless items entity @s container.14 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.14

execute \
    if items entity @s container.14 #complete_blocks \
    unless items entity @s container.14 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.14 #complete_blocks \
    unless items entity @s container.14 #excluding_blocks run \
item replace entity @s container.14 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.15 #complete_blocks \
    unless items entity @s container.15 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.15

execute \
    if items entity @s container.15 #complete_blocks \
    unless items entity @s container.15 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.15 #complete_blocks \
    unless items entity @s container.15 #excluding_blocks run \
item replace entity @s container.15 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.16 #complete_blocks \
    unless items entity @s container.16 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.16

execute \
    if items entity @s container.16 #complete_blocks \
    unless items entity @s container.16 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.16 #complete_blocks \
    unless items entity @s container.16 #excluding_blocks run \
item replace entity @s container.16 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.17 #complete_blocks \
    unless items entity @s container.17 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.17

execute \
    if items entity @s container.17 #complete_blocks \
    unless items entity @s container.17 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.17 #complete_blocks \
    unless items entity @s container.17 #excluding_blocks run \
item replace entity @s container.17 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.18 #complete_blocks \
    unless items entity @s container.18 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.18

execute \
    if items entity @s container.18 #complete_blocks \
    unless items entity @s container.18 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.18 #complete_blocks \
    unless items entity @s container.18 #excluding_blocks run \
item replace entity @s container.18 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.19 #complete_blocks \
    unless items entity @s container.19 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.19

execute \
    if items entity @s container.19 #complete_blocks \
    unless items entity @s container.19 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.19 #complete_blocks \
    unless items entity @s container.19 #excluding_blocks run \
item replace entity @s container.19 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.20 #complete_blocks \
    unless items entity @s container.20 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.20

execute \
    if items entity @s container.20 #complete_blocks \
    unless items entity @s container.20 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.20 #complete_blocks \
    unless items entity @s container.20 #excluding_blocks run \
item replace entity @s container.20 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.21 #complete_blocks \
    unless items entity @s container.21 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.21

execute \
    if items entity @s container.21 #complete_blocks \
    unless items entity @s container.21 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.21 #complete_blocks \
    unless items entity @s container.21 #excluding_blocks run \
item replace entity @s container.21 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.22 #complete_blocks \
    unless items entity @s container.22 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.22

execute \
    if items entity @s container.22 #complete_blocks \
    unless items entity @s container.22 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.22 #complete_blocks \
    unless items entity @s container.22 #excluding_blocks run \
item replace entity @s container.22 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.23 #complete_blocks \
    unless items entity @s container.23 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.23

execute \
    if items entity @s container.23 #complete_blocks \
    unless items entity @s container.23 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.23 #complete_blocks \
    unless items entity @s container.23 #excluding_blocks run \
item replace entity @s container.23 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.24 #complete_blocks \
    unless items entity @s container.24 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.24

execute \
    if items entity @s container.24 #complete_blocks \
    unless items entity @s container.24 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.24 #complete_blocks \
    unless items entity @s container.24 #excluding_blocks run \
item replace entity @s container.24 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.25 #complete_blocks \
    unless items entity @s container.25 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.25

execute \
    if items entity @s container.25 #complete_blocks \
    unless items entity @s container.25 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.25 #complete_blocks \
    unless items entity @s container.25 #excluding_blocks run \
item replace entity @s container.25 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.26 #complete_blocks \
    unless items entity @s container.26 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.26

execute \
    if items entity @s container.26 #complete_blocks \
    unless items entity @s container.26 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.26 #complete_blocks \
    unless items entity @s container.26 #excluding_blocks run \
item replace entity @s container.26 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.27 #complete_blocks \
    unless items entity @s container.27 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.27

execute \
    if items entity @s container.27 #complete_blocks \
    unless items entity @s container.27 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.27 #complete_blocks \
    unless items entity @s container.27 #excluding_blocks run \
item replace entity @s container.27 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.28 #complete_blocks \
    unless items entity @s container.28 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.28

execute \
    if items entity @s container.28 #complete_blocks \
    unless items entity @s container.28 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.28 #complete_blocks \
    unless items entity @s container.28 #excluding_blocks run \
item replace entity @s container.28 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.29 #complete_blocks \
    unless items entity @s container.29 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.29

execute \
    if items entity @s container.29 #complete_blocks \
    unless items entity @s container.29 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.29 #complete_blocks \
    unless items entity @s container.29 #excluding_blocks run \
item replace entity @s container.29 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.30 #complete_blocks \
    unless items entity @s container.30 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.30

execute \
    if items entity @s container.30 #complete_blocks \
    unless items entity @s container.30 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.30 #complete_blocks \
    unless items entity @s container.30 #excluding_blocks run \
item replace entity @s container.30 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.31 #complete_blocks \
    unless items entity @s container.31 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.31

execute \
    if items entity @s container.31 #complete_blocks \
    unless items entity @s container.31 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.31 #complete_blocks \
    unless items entity @s container.31 #excluding_blocks run \
item replace entity @s container.31 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.32 #complete_blocks \
    unless items entity @s container.32 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.32

execute \
    if items entity @s container.32 #complete_blocks \
    unless items entity @s container.32 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.32 #complete_blocks \
    unless items entity @s container.32 #excluding_blocks run \
item replace entity @s container.32 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.33 #complete_blocks \
    unless items entity @s container.33 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.33

execute \
    if items entity @s container.33 #complete_blocks \
    unless items entity @s container.33 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.33 #complete_blocks \
    unless items entity @s container.33 #excluding_blocks run \
item replace entity @s container.33 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.34 #complete_blocks \
    unless items entity @s container.34 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.34

execute \
    if items entity @s container.34 #complete_blocks \
    unless items entity @s container.34 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.34 #complete_blocks \
    unless items entity @s container.34 #excluding_blocks run \
item replace entity @s container.34 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0



execute \
    if items entity @s container.35 #complete_blocks \
    unless items entity @s container.35 #excluding_blocks run \
item replace entity @s weapon.mainhand from entity @s container.35

execute \
    if items entity @s container.35 #complete_blocks \
    unless items entity @s container.35 #excluding_blocks run \
scoreboard players set #player.replace.block.temp global.main 1

execute \
    if items entity @s container.35 #complete_blocks \
    unless items entity @s container.35 #excluding_blocks run \
item replace entity @s container.35 with air


execute \
    if score #player.replace.block.temp global.main matches 1 run \
return 0