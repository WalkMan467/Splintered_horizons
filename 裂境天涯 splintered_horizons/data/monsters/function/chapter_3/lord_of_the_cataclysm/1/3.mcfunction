# 執行者 : typhoon

# speed
rotate @s ~ 0

tag @a add temp
tag @a[tag=!animation,gamemode=spectator] remove temp

execute \
    as @a[tag=temp] \
    if score @s entity.dummy_mob matches 1.. run \
tag @s remove temp


execute facing entity @p[tag=temp,distance=0.25..] feet rotated ~ 0 run \
tp @s ^ ^ ^0.1

tag @a remove temp


execute at @s \
    unless block ~ ~ ~ #penetrate run \
tp @s ~ ~1 ~

# dmg

execute \
    as @a[distance=..1.5] at @s run \
function monsters:chapter_3/lord_of_the_cataclysm/1/3c

# particle

execute store result score @s particle run \
random value 0..1


execute \
    if score @s particle matches 0 rotated ~ 0 run \
function monsters:chapter_3/lord_of_the_cataclysm/1/3b

execute \
    if score @s particle matches 1 rotated ~45 0 run \
function monsters:chapter_3/lord_of_the_cataclysm/1/3b