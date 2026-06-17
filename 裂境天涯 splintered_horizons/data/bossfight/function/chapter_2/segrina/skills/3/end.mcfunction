scoreboard players set skill.3 monster.segrina.cd 1000
scoreboard players reset @s monster.segrina.skill.3.casting
scoreboard players set #disable monster.segrina.state 0
data modify entity @s NoAI set value 0b
function bossfight:chapter_2/segrina/skills/3/1

tag @a[distance=..60,sort=arbitrary] remove monster.segrina.skill.3.raycast.player
tag @s remove chapter_2.segrina.3