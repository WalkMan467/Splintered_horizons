kill @e[type=marker,tag=test]
scoreboard players set $value armor.random_teleport.raycast 4
scoreboard players set $value armor.random_teleport.raycast.id 1


execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value armor.random_teleport.raycast.id matches 1 rotated 0 0 \
    positioned ^ ^1 ^8 run \
function armors:type/random_teleport/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value armor.random_teleport.raycast.id matches 2 rotated 0 0 \
    positioned ^ ^1 ^-8 run \
function armors:type/random_teleport/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value armor.random_teleport.raycast.id matches 3 rotated 0 0 \
    positioned ^8 ^1 ^ run \
function armors:type/random_teleport/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value armor.random_teleport.raycast.id matches 4 rotated 0 0 \
    positioned ^-8 ^1 ^ run \
function armors:type/random_teleport/racast


execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value armor.random_teleport.raycast.id matches 5 rotated 0 0 \
    positioned ^8 ^1 ^8 run \
function armors:type/random_teleport/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value armor.random_teleport.raycast.id matches 6 rotated 0 0 \
    positioned ^-8 ^1 ^-8 run \
function armors:type/random_teleport/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value armor.random_teleport.raycast.id matches 7 rotated 0 0 \
    positioned ^8 ^1 ^-8 run \
function armors:type/random_teleport/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value armor.random_teleport.raycast.id matches 8 rotated 0 0 \
    positioned ^-8 ^1 ^8 run \
function armors:type/random_teleport/racast

tag @e[type=marker,tag=test,limit=1,sort=random] add armor.random_teleport.target


execute at @n[tag=armor.random_teleport.target,distance=..16,type=marker] run \
playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 1

tp @s @n[tag=armor.random_teleport.target,distance=..16,type=marker]
kill @e[type=marker,tag=test,limit=8,distance=..16]