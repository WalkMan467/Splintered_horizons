attribute @s max_health modifier add monster.segrina.skill.4.1 -0.25 add_multiplied_total
attribute @s max_health modifier add monster.segrina.skill.4.2 -0.25 add_multiplied_total
attribute @s max_health modifier add monster.segrina.skill.4.3 -0.25 add_multiplied_total
attribute @s max_health modifier add monster.segrina.skill.4.4 -0.25 add_multiplied_total

scoreboard players set @s monster.segrina.skill.4.effect 4
scoreboard players set @s monster.segrina.skill.4.invincible 100
effect give @s glowing 5 255 true

execute \
    positioned 725 107 605 run \
kill @e[sort=arbitrary,dx=73,dy=26,dz=73,tag=soul_tree_remnant,type=skeleton]