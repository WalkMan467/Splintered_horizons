
execute store result score #rdm global.main run \
random value 1..8


execute \
    if score #rdm global.main matches 1 run \
rotate @s ~45 ~45

execute \
    if score #rdm global.main matches 2 run \
rotate @s ~90 ~15

execute \
    if score #rdm global.main matches 3 run \
rotate @s ~135 ~-60

execute \
    if score #rdm global.main matches 4 run \
rotate @s ~180 ~-45

execute \
    if score #rdm global.main matches 5 run \
rotate @s ~135 ~-15

execute \
    if score #rdm global.main matches 6 run \
rotate @s ~60 ~-30

execute \
    if score #rdm global.main matches 7 run \
rotate @s ~25 ~-45

execute \
    if score #rdm global.main matches 8 run \
rotate @s ~-35 ~-90

data merge entity @s {teleport_duration: 1,start_interpolation:1,block_state: {Name: "minecraft:glowstone"}, brightness: {block: 15, sky: 15},Glowing:1b, glow_color_override: 7534335, transformation: {scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

tag @s add weapon.otherworld_star.fallstar.display

execute \
    if entity @p[tag=weapon.otherworld_star.effect.speed] run \
tag @s add weapon.otherworld_star.effect.speed
tag @a remove weapon.otherworld_star.effect.speed

scoreboard players set @s duration 20