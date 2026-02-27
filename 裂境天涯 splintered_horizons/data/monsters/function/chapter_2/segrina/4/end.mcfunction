scoreboard players set skill.4 monster.segrina.cd 660
scoreboard players reset @s monster.segrina.skill.4.casting

execute \
    positioned 725 107 605 run \
effect give @a[sort=arbitrary,dx=73,dy=26,dz=73,tag=!chapter_2.segrina.lose] instant_health 1 27 true

tag @s remove chapter_2.segrina.4