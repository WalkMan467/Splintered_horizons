attribute @s max_health modifier remove monster.segrina.skill.4.1
attribute @s max_health modifier remove monster.segrina.skill.4.2
attribute @s max_health modifier remove monster.segrina.skill.4.3
attribute @s max_health modifier remove monster.segrina.skill.4.4
attribute @s max_health base reset

scoreboard players reset @s monster.segrina.skill.4.invincible

execute \
    positioned 725 107 605 run \
tp @e[sort=arbitrary,dx=73,dy=26,dz=73,tag=soul_tree_remnant,type=skeleton] ~ -255 ~

execute \
    positioned 725 107 605 run \
kill @e[sort=arbitrary,dx=73,dy=26,dz=73,tag=soul_tree_remnant,type=skeleton]

scoreboard players reset @s monster.segrina.skill.4.effect