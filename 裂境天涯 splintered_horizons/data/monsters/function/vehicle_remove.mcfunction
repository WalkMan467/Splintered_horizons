# ===================================================
# 移除載具 / vehicle remove

    ## Guide [ function monsters:vehicle_remove ] >>> 移除載具 / vehicle remove
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/setup ] >>> setup
    ## Guide [ function monsters:chapter_3/sunfire_emissary/setup ] >>> setup

# ===================================================

execute \
    on vehicle run \
tag @s add void
ride @s dismount


execute \
    as @n[tag=void,type=!#minecraft:dummy_mob] at @s run \
tp @s ~ -255 ~
kill @e[tag=void,type=!#minecraft:dummy_mob]