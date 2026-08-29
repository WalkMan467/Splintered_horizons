# ===================================================
# 進入破碎之城 / enter the broken city

    ## Guide [ function unstable_rift:chapter_1/1/in ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/out ] >>> 離開破碎之城 / leave the broken city
    ## Guide [ function unstable_rift:chapter_1/1/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/summon ] >>> 建立專屬血條 / create the player's own bossbar

# ===================================================

advancement revoke @s only unstable_rift:chapter_1/1/out

tag @s add unstable_rift.chapter_1.1

function players:inventory/save {bag:"overworld"}

clear @s

scoreboard players set @s unstable_rift.timer 12000

execute \
    unless score @s unstable_rift.chapter_1.1.display.id matches -1073741823..1073741823 \
    store result score @s unstable_rift.chapter_1.1.display.id run \
random value -1073741823..1073741823

execute \
    store result storage unstable_rift:chapter_1.1 temp.id int 1 run \
scoreboard players get @s unstable_rift.chapter_1.1.display.id

function unstable_rift:chapter_1/1/bossbar/summon with storage unstable_rift:chapter_1.1 temp

say in
