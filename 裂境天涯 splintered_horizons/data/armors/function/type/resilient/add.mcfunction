# ===================================================
# add

    ## Guide [ function armors:type/resilient/add ] >>> add
    ## Guide [ function armors:type/resilient/use ] >>> use
    ## Guide [ function armors:type/resilient/main ] >>> resilient main

# ===================================================

# This Function: add

scoreboard players add @s armor.resilient.hit 1
scoreboard players set @s armor.resilient.effect.timer 100

playsound minecraft:item.shield.block voice @a ~ ~1 ~ 0.5 1

attribute @s armor modifier remove armor.resilient

execute \
    if score @s armor.resilient.hit matches 1 run \
attribute @s armor modifier add armor.resilient 1 add_value

execute \
    if score @s armor.resilient.hit matches 2 run \
attribute @s armor modifier add armor.resilient 2 add_value

execute \
    if score @s armor.resilient.hit matches 3 run \
attribute @s armor modifier add armor.resilient 3 add_value

execute \
    if score @s armor.resilient.hit matches 4 run \
attribute @s armor modifier add armor.resilient 4 add_value

execute \
    if score @s armor.resilient.hit matches 5 run \
attribute @s armor modifier add armor.resilient 5 add_value