# Guide

    ## Redirected to [ function unstable_rift:main/loop ]

#==================================================

    tag @a add temp
    tag @a[gamemode=spectator,tag=!animation] remove temp
    tag @a[tag=sys.hide_world_area.name] remove temp

# Chapter 1

    # Broken City

    # 剛被 clear 送出來的人有幾秒寬限期。
    # 回去的點在生態域邊界內側，沒有這段就會立刻被判定成再次進入。

    execute \
        if score @s unstable_rift.chapter_1.1.cooldown matches 1.. run \
    scoreboard players remove @s unstable_rift.chapter_1.1.cooldown 1

    execute \
        if entity @s[tag=temp] \
        unless score @s unstable_rift.chapter_1.1.cooldown matches 1.. \
        if biome ~ ~ ~ unstable_rift:chapter_1/1 run \
    advancement grant @s only unstable_rift:chapter_1/1/in

    execute \
        unless biome ~ ~ ~ unstable_rift:chapter_1/1 run \
    advancement grant @s only unstable_rift:chapter_1/1/out

    tag @a remove temp

    function unstable_rift:chapter_1/1/timer/use