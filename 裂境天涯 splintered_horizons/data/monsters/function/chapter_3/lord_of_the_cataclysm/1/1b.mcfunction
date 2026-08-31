# ===================================================
# 災厄之主 技能1 龍捲風初始化 / lord of the cataclysm skill 1 tornado init

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/1b ] >>> 災厄之主 技能1 龍捲風初始化 / lord of the cataclysm skill 1 tornado init
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/1 ] >>> 災厄之主 技能1 隨機方位生成龍捲風 / lord of the cataclysm skill 1 spawn tornado

# ===================================================

data merge entity @s {block_state: {id: "minecraft:air"}, brightness: {block: 15, sky: 15}, interpolation_duration: 1, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set @s duration 200

tag @s add chapter_3.lord_of_the_cataclysm.1.1

tag @a add temp
tag @a[tag=!animation,gamemode=spectator] remove temp

execute \
    as @a[tag=temp] \
    if score @s sys.dummy_mob matches 1.. run \
tag @s remove temp


execute facing entity @p[distance=..60,tag=temp] feet rotated ~ 0 run \
tp @n[tag=chapter_3.lord_of_the_cataclysm.1.1] ~ ~ ~ ~ ~

tag @a remove temp

playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 3 1.5