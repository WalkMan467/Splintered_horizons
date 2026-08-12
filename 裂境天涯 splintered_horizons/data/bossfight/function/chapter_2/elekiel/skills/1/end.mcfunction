scoreboard players set $monster.chapter_2.elekiel.1 monster.elekiel.skill.cd 950
scoreboard players reset $monster.chapter_2.elekiel.1 monster.elekiel.skill.casting
function bossfight:chapter_2/elekiel/skills/1/4

tag @s remove chapter_2.elekiel.1
tag @s remove rotate

data modify entity @s NoAI set value 0b
data modify entity @s Invulnerable set value 0b
scoreboard players reset @s sys.dummy_mob