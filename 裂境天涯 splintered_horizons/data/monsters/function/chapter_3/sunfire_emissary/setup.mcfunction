# ===================================================
# 烈陽使者 生成後設定 / sunfire emissary setup

    ## Guide [ function monsters:chapter_3/sunfire_emissary/setup ] >>> 烈陽使者 生成後設定 / sunfire emissary setup
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/explosion/run ] >>> 烈陽使者 自爆 生成燃燒態本體 / sunfire emissary spawn burning form
    ## Guide [ function monsters:summon/chapter_3/sunfire_emissary ] >>> 召喚 烈陽使者 / summon sunfire emissary
    ## Guide [ function monsters:vehicle_remove ] >>> 移除載具 / vehicle remove

# ===================================================

function monsters:vehicle_remove


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