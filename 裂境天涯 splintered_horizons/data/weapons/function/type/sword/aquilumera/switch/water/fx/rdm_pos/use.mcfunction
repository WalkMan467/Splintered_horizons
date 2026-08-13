kill @e[type=marker,tag=test]

execute \
    store result score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast run \
random value 2..8

scoreboard players set $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id 1


execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id matches 1 \
    rotated 0 0 \
    positioned ^ ^1 ^8 run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id matches 2 \
    rotated 0 0 \
    positioned ^ ^1 ^-8 run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id matches 3 \
    rotated 0 0 \
    positioned ^8 ^1 ^ run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id matches 4 \
    rotated 0 0 \
    positioned ^-8 ^1 ^ run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast


execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id matches 5 \
    rotated 0 0 \
    positioned ^8 ^1 ^8 run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id matches 6 \
    rotated 0 0 \
    positioned ^-8 ^1 ^-8 run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id matches 7 \
    rotated 0 0 \
    positioned ^8 ^1 ^-8 run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id matches 8 \
    rotated 0 0 \
    positioned ^-8 ^1 ^8 run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast

tag @e[type=marker,tag=test,limit=1,sort=random] add weapon.aquilumera.switch.water.fx.rdm_pos.target


execute at @n[tag=weapon.aquilumera.switch.water.fx.rdm_pos.target,distance=..16,type=marker] run \
playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 1


execute as @e[tag=weapon.aquilumera.switch.water.fx.rdm_pos.target,distance=..16,type=marker] at @s run \
function weapons:type/sword/aquilumera/switch/water/fx/mirror/use

kill @e[tag=test,limit=8,distance=..16,type=marker]