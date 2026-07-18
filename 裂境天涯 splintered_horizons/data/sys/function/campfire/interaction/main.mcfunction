## The campfire area is shown here [ function world_area:main/loop ]

execute \
    if data entity @s interaction.timestamp run \
function sys:campfire/interaction/run

scoreboard players add @s sys.campfire.tips 0
scoreboard players add @s sys.campfire.tips.temp 0

function sys:dummy_mob/interface

execute \
    store result score @s sys.campfire.tips \
if entity @p[sort=arbitrary,tag=!sys.dummy_mob.interface,distance=..5]

execute \
    if score @s sys.campfire.tips matches 1 \
    if score @s sys.campfire.tips.temp matches 0 run \
function sys:campfire/tips/true

execute \
    unless entity @p[sort=arbitrary,tag=!sys.dummy_mob.interface,distance=..5] \
    if score @s sys.campfire.tips matches 0 \
    if score @s sys.campfire.tips.temp matches 1 run \
function sys:campfire/tips/false

execute \
    positioned ~ ~1 ~2 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~1 ~1 ~2 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~-1 ~1 ~2 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn



execute \
    positioned ~ ~1 ~-2 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~1 ~1 ~-2 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~-1 ~1 ~-2 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn



execute \
    positioned ~2 ~1 ~ \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~2 ~1 ~1 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~2 ~1 ~-1 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn



execute \
    positioned ~-2 ~1 ~ \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~-2 ~1 ~1 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~-2 ~1 ~-1 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn




execute \
    positioned ~ ~1 ~3 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~1 ~1 ~3 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~-1 ~1 ~3 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn



execute \
    positioned ~ ~1 ~-3 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~1 ~1 ~-3 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~-1 ~1 ~-3 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn



execute \
    positioned ~3 ~1 ~ \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~3 ~1 ~1 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~3 ~1 ~-1 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn



execute \
    positioned ~-3 ~1 ~ \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~-3 ~1 ~1 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn


execute \
    positioned ~-3 ~1 ~-1 \
    if block ~ ~ ~ #campfires[lit=false] \
    unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run \
function sys:sit_down/spawn

tag @a remove sys.dummy_mob.interface