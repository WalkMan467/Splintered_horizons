function monsters:other/sun_of_the_abyssal_eclipse/death/use


execute \
    on passengers \
    if entity @s[type=marker,tag=monster.marker] run \
kill @s