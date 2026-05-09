attribute @s max_health modifier add monster.segrina.skill.4.1 -0.25 add_multiplied_total
attribute @s max_health modifier add monster.segrina.skill.4.2 -0.25 add_multiplied_total
attribute @s max_health modifier add monster.segrina.skill.4.3 -0.25 add_multiplied_total
attribute @s max_health modifier add monster.segrina.skill.4.4 -0.25 add_multiplied_total

attribute @s max_health base set 1

scoreboard players set @s monster.segrina.skill.4.effect 4
scoreboard players set @s monster.segrina.skill.4.invincible 100
effect give @s glowing 5 255 true

execute \
    unless score @s monster.segrina.skill.4.invincible.display.id matches -1073741823..1073741823 \
    store result score @s monster.segrina.skill.4.invincible.display.id run \
random value -1073741823..1073741823

execute \
    store result storage monster.segrina.skill.4.invincible temp.id int 1 run \
scoreboard players get @s monster.segrina.skill.4.invincible.display.id

function monsters:chapter_2/segrina/4/bossbar/summon with storage monster.segrina.skill.4.invincible temp

execute \
    positioned 725 107 605 run \
kill @e[sort=arbitrary,dx=73,dy=26,dz=73,tag=soul_tree_remnant,type=skeleton]