execute \
    unless score #skill.4.enabled bossfight.segrina.main matches 1.. run \
return 0

function bossfight:chapter_2/segrina/skills/1/end
function bossfight:chapter_2/segrina/skills/2/end
function bossfight:chapter_2/segrina/skills/3/end

scoreboard players reset skill.4 monster.segrina.cd
scoreboard players reset #skill.4.enabled bossfight.segrina.main

scoreboard players reset skill.1 monster.segrina.cd
scoreboard players reset skill.2 monster.segrina.cd
scoreboard players reset skill.3 monster.segrina.cd

scoreboard players reset @s monster.segrina.skill.1.casting
scoreboard players reset @s monster.segrina.skill.2.casting
scoreboard players reset @s monster.segrina.skill.3.casting

scoreboard players reset skill.1 monster.segrina.skill.1.casting
scoreboard players reset skill.2 monster.segrina.skill.2.casting
scoreboard players reset skill.3 monster.segrina.skill.3.casting
scoreboard players reset skill.4 monster.segrina.skill.4.casting

tag @s add chapter_2.segrina.4
tag @s remove chapter_2.segrina.1
tag @s remove chapter_2.segrina.2
tag @s remove chapter_2.segrina.3