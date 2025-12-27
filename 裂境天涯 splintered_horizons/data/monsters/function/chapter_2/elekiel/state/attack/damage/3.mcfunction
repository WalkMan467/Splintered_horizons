tag @a[distance=..5] add temp
tag @a[tag=animation] remove temp
tag @a[gamemode=spectator] remove temp
tag @a[gamemode=creative] remove temp
tag @a[tag=chapter_2.elekiel.lose] remove temp

execute as @a[tag=temp] run damage @s 8 mob_attack by 00000100-0000-0080-0000-008000000001

tag @a remove temp