tag @a[sort=arbitrary,distance=..5] add temp2
tag @a[sort=arbitrary,distance=..5,tag=!animation,gamemode=spectator] remove temp2
tag @a[sort=arbitrary,distance=..5,gamemode=creative] remove temp2
tag @a[sort=arbitrary,distance=..5,tag=chapter_2.elekiel.lose] remove temp2


execute \
    unless entity @a[sort=arbitrary,distance=..5,tag=temp2] run \
return 0

scoreboard players set @s monster.elekiel.3.state 1