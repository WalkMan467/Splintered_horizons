function monsters:chapter_2/apostle_of_eternity/1/fx_range

playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 0.75
data modify entity @s NoAI set value 1b

tag @a[sort=arbitrary,distance=..4] add temp

tag @a[sort=arbitrary,distance=..4,gamemode=creative] remove temp
tag @a[sort=arbitrary,distance=..4,gamemode=spectator,tag=!animation] remove temp
tag @a[sort=arbitrary,distance=..4,tag=sys.dummy_mob] remove temp

execute \
    as @a[sort=arbitrary,distance=..4,tag=sys.] \
    if score @s sys.dummy_mob matches 1.. run \
tag @s remove temp

execute \
    as @a[sort=arbitrary,distance=..4,tag=sys.] \
    if score @s sys.skills_freeze matches 1.. run \
tag @s remove temp


execute \
    as @a[sort=arbitrary,distance=..4,tag=temp] at @s run \
function monsters:chapter_2/apostle_of_eternity/lock/use

tag @a[sort=arbitrary,distance=..4] remove temp