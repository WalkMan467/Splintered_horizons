playsound minecraft:item.armor.equip_netherite voice @a ~ ~1 ~ 1 0.875
playsound minecraft:item.armor.equip_netherite voice @a ~ ~1 ~ 1 0.875
playsound minecraft:item.armor.equip_netherite voice @a ~ ~1 ~ 1 0.875

scoreboard players set @s player.disable.elytra_switch 60
scoreboard players set @s player.actionbar.zipline_platform 0
scoreboard players set @s player.actionbar.zipline_platform.useing 2

scoreboard players add #sys.zipline_platform.user.id sys.zipline_platform.id 1
scoreboard players operation @s sys.zipline_platform.id = #sys.zipline_platform.user.id sys.zipline_platform.id

# 795e2cb6-676d-4575-b1d1-6bd9f6cc8890
execute \
    anchored eyes \
    positioned ^ ^ ^100 run \
summon marker ~ ~ ~ {UUID:[I;2036214966,1735214453,-1311675431,-154367856]}

execute \
    as @e[tag=sys.zipline_platform.act,tag=!sys.zipline_platform.using,distance=..60,type=interaction] \
    facing entity @s feet \
    positioned ^ ^ ^100 run \
function sys:zipline_platform/interacted/2

execute \
    at 795e2cb6-676d-4575-b1d1-6bd9f6cc8890 \
    as @n[distance=0..,tag=sys.zipline_platform.pos,type=marker] run \
function sys:zipline_platform/interacted/3

execute \
    at @n[tag=sys.zipline_platform.using,sort=arbitrary,distance=..8,type=interaction] \
    facing entity @n[tag=sys.zipline_platform.target,distance=..70,sort=arbitrary,type=interaction] feet run \
tp @s ~ ~3.5 ~ ~ ~

execute \
    positioned ~ ~3.5 ~ \
    as @e[tag=sys.zipline_platform.target,distance=..70,limit=1,type=interaction] at @s run \
function sys:zipline_platform/point/use

# reset
tag @e[distance=0..,tag=sys.zipline_platform.target,limit=1,type=interaction] remove sys.zipline_platform.target
kill @e[distance=0..,tag=sys.zipline_platform.pos,type=marker]
kill 795e2cb6-676d-4575-b1d1-6bd9f6cc8890