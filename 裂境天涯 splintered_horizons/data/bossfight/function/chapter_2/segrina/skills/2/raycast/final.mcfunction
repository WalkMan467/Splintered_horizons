scoreboard players operation @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.user] monster.segrina.skill.2.casting = #monster.segrina.skill.2.raycast monster.segrina.skill.2.casting

execute \
    if score #monster.segrina.skill.2.raycast monster.segrina.skill.2.casting matches ..30 run \
scoreboard players set #monster.segrina.skill.2.raycast.color monster.segrina.skill.2.casting 0

execute \
    if score #monster.segrina.skill.2.raycast monster.segrina.skill.2.casting matches 30..40 run \
scoreboard players set #monster.segrina.skill.2.raycast.color monster.segrina.skill.2.casting 1

execute \
    if score #monster.segrina.skill.2.raycast monster.segrina.skill.2.casting matches 40.. run \
scoreboard players set #monster.segrina.skill.2.raycast.color monster.segrina.skill.2.casting 2

tag @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.user] remove monster.segrina.skill.2.raycast.user