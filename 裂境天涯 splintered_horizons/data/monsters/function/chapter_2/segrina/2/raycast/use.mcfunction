tag @s add monster.segrina.skill.2.raycast.user

scoreboard players set #monster.segrina.skill.2.raycast monster.segrina.skill.2.casting 0

execute \
    facing entity @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] feet \
    positioned ~ ~1 ~ run \
function monsters:chapter_2/segrina/2/raycast/detect