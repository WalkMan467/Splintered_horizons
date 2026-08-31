# ===================================================
# 災厄之主 本體 血條與技能分派 / lord of the cataclysm self tick

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/main.monster ] >>> 災厄之主 本體 血條與技能分派 / lord of the cataclysm self tick
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/main ] >>> 災厄之主 排程 / lord of the cataclysm scheduler
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/main ] >>> 災厄之主 技能1 分鏡 / lord of the cataclysm skill 1 timeline
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/2/main ] >>> 災厄之主 技能2 分鏡 / lord of the cataclysm skill 2 timeline
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/3/main ] >>> 災厄之主 技能3 分鏡 / lord of the cataclysm skill 3 timeline
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/cast/cast ] >>> 災厄之主 施法 開始 隨機選技 / lord of the cataclysm cast begin
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

bossbar set minecraft:monsters.lord_of_the_cataclysm players @a[distance=..20]

effect give @a[distance=..20] night_vision 15 255 true


execute \
    as @a[distance=..20] at @s run \
advancement grant @s only music:chapter_3/lord_of_the_cataclysm/play

execute \
    as @a[distance=20..] at @s run \
advancement grant @s only music:chapter_3/lord_of_the_cataclysm/reset

# Bossbar

execute \
    store result bossbar minecraft:monsters.lord_of_the_cataclysm max run \
attribute @s max_health get

execute \
    store result bossbar minecraft:monsters.lord_of_the_cataclysm value run \
data get entity @s Health
bossbar set minecraft:monsters.lord_of_the_cataclysm visible true

# Skill 1

execute \
    as @s[tag=chapter_3.lord_of_the_cataclysm.1] at @s run \
function monsters:chapter_3/lord_of_the_cataclysm/1/main

# Skill 2

execute \
    as @s[tag=chapter_3.lord_of_the_cataclysm.2] at @s run \
function monsters:chapter_3/lord_of_the_cataclysm/2/main

# Skill 3

execute \
    as @s[tag=chapter_3.lord_of_the_cataclysm.3] at @s run \
function monsters:chapter_3/lord_of_the_cataclysm/3/main

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_3/lord_of_the_cataclysm/cast/cast