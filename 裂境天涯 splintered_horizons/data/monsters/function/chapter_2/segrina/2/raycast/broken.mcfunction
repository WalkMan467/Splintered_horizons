
execute \
    as ffff8285-0000-0c33-0000-5a5c0162349d \
    if entity @s[tag=death] run \
return run function monsters:chapter_2/segrina/2/raycast/cancel

scoreboard players reset #monster.segrina.skill.2.raycast monster.segrina.skill.2.casting

tag @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.player,tag=monster.segrina.skill.2.raycast.user] add forced_interrupt_animation

execute \
    as @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.player,tag=monster.segrina.skill.2.raycast.user] at @s run \
function players:stop_animation

kill @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.player,tag=monster.segrina.skill.2.raycast.user,gamemode=!creative]

execute at @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.user] run \
playsound minecraft:entity.zombie_villager.cure voice @a ~ ~ ~ 1 1

execute at @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.user] run \
particle end_rod ~ ~1 ~ 0 0 0 0.5 40 force @a

tag @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.user] remove monster.segrina.skill.2.raycast.player
tag @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.user] remove monster.segrina.skill.2.raycast.user