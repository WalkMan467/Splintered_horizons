function sys:dummy_mob/interface

tag @s add temp

damage @n[distance=..3,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!#arrows,type=!player] 5 arrow by @n[sort=arbitrary,distance=..3,tag=temp,type=#arrows]

tag @s remove temp