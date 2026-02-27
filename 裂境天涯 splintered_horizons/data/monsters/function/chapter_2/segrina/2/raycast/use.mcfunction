tag @s add monster.segrina.skill.2.raycast.user

scoreboard players set #monster.segrina.skill.2.raycast monster.segrina.skill.2.casting 0

execute \
    facing entity ffff8285-0000-0c33-0000-5a5c0162349d feet \
    positioned ~ ~1 ~ run \
function monsters:chapter_2/segrina/2/raycast/detect