execute \
    as @e[distance=0..,sort=arbitrary,tag=particle.grip_of_withering.passive.sword,type=item_display] at @s run \
function particle:type/expansion/grip_of_withering/passive/sword/main

execute \
    as @e[sort=arbitrary,tag=particle.grip_of_withering.passive.main,distance=0..,type=block_display] at @s run \
function particle:type/expansion/grip_of_withering/passive/main/main