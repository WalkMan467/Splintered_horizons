tag @s add chapter_2.broken_moon.4

scoreboard players reset @s monster.broken_moon.skill.4.cd
scoreboard players add @s monster.broken_moon.skill.4.casting 0

title @a title [{"text":"[","color":"blue","bold":true},{"text":"!","color":"red"},{"text":"]","color":"blue"}]
title @a times 10 20 10
title @a subtitle {"translate":"monsters.broken_moon.4","fallback":"死亡凝視","color":"gold","bold":true}

tellraw @a {"text":"\n"}
tellraw @a [{"text":"[","color":"blue","bold":true},{"text":"⚠","color":"gold","bold":false},{"text":"]: ","color":"blue","bold":true},{"translate":"monsters.broken_moon.4.1.1","fallback":"20 秒內擊殺一名怪物","color":"dark_green","bold":false,"underlined":true},{"translate":"monsters.broken_moon.4.1.2","fallback":"可以獲得","color":"gray","bold":false,"underlined":false},{"translate":"monsters.broken_moon.4.1.3","fallback":"[死亡庇護]","color":"green","bold":false,"underlined":true}]
tellraw @a [{"text":"[","color":"blue","bold":true},{"text":"⚠","color":"gold","bold":false},{"text":"]: ","color":"blue","bold":true},{"translate":"monsters.broken_moon.4.2.1","fallback":"擁有","color":"gray","bold":false},{"translate":"monsters.broken_moon.4.1.3","fallback":"[死亡庇護]","color":"green","bold":false,"underlined":true},{"translate":"monsters.broken_moon.4.2.2","fallback":"可以透過","color":"gray","bold":false,"underlined":false},{"translate":"monsters.broken_moon.4.2.3","fallback":"跳至洞口可解除死亡到計時","color":"green","bold":false,"underlined":true}]
tellraw @a {"text":"\n"}