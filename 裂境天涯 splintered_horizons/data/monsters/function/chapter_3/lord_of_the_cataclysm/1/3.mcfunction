# ===================================================
# 災厄之主 技能1 龍捲風追擊 / lord of the cataclysm skill 1 tornado chase

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/3 ] >>> 災厄之主 技能1 龍捲風追擊 / lord of the cataclysm skill 1 tornado chase
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/main ] >>> 災厄之主 排程 / lord of the cataclysm scheduler
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/3b ] >>> 災厄之主 技能1 龍捲風特效 / lord of the cataclysm skill 1 tornado fx
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/3c ] >>> 災厄之主 技能1 龍捲風捲起玩家 / lord of the cataclysm skill 1 tornado lift

# ===================================================

# 執行者 : typhoon

# speed
rotate @s ~ 0

tag @a add temp
tag @a[tag=!animation,gamemode=spectator] remove temp

execute \
    as @a[tag=temp] \
    if score @s sys.dummy_mob matches 1.. run \
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

execute \
    store result score @s particle run \
random value 0..1


execute \
    if score @s particle matches 0 rotated ~ 0 run \
function monsters:chapter_3/lord_of_the_cataclysm/1/3b

execute \
    if score @s particle matches 1 rotated ~45 0 run \
function monsters:chapter_3/lord_of_the_cataclysm/1/3b