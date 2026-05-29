tag @a[distance=..3.5] add temp
tag @a[tag=animation] remove temp
tag @a[gamemode=spectator] remove temp
tag @a[gamemode=creative] remove temp
tag @a[tag=chapter_2.segrina.lose] remove temp


execute \
    as @a[tag=temp] run \
damage @s 4 monsters:chapter_2/segrina/attack/1

tag @a remove temp