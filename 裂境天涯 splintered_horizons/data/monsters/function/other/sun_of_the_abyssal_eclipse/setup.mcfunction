# ===================================================
# 暗蝕的烈陽 生成後設定 / sun of the abyssal eclipse setup

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/setup ] >>> 暗蝕的烈陽 生成後設定 / sun of the abyssal eclipse setup
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/explosion/summon ] >>> 暗蝕的烈陽 自爆 生成燃燒態本體 / sun of the abyssal eclipse spawn burning form
    ## Guide [ function monsters:summon/other/sun_of_the_abyssal_eclipse ] >>> 召喚 暗蝕的烈陽 / summon sun of the abyssal eclipse

# ===================================================

execute \
    on passengers \
    if entity @s[type=marker,tag=main.duration.timer,tag=summon] run \
scoreboard players set @s duration 600

execute \
    on passengers \
    if entity @s[type=marker,tag=main.duration.timer,tag=summon] run \
tag @s remove summon


execute \
    store result score @s monster.skill.cast.at run \
random value 60..100
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip
tag @s remove monsters.spawn