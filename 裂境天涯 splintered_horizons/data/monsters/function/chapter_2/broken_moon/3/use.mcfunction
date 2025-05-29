tag @s add chapter_2.broken_moon.3

scoreboard players reset @s monster.broken_moon.skill.3.cd
scoreboard players add @s monster.broken_moon.skill.3.casting 0

title @a title [{"text":"[","color":"blue","bold":true},{"text":"!","color":"red"},{"text":"]","color":"blue"}]
title @a times 10 20 10
title @a subtitle {"translate":"monsters.broken_moon.3","fallback":"日蝕之陣","color":"gold","bold":true}

tellraw @a {"text":"\n"}
tellraw @a [{"text":"[","color":"blue","bold":true},{"text":"⚠","color":"gold","bold":false},{"text":"]: ","color":"blue","bold":true},{"translate":"monsters.broken_moon.3.1.1","fallback":"前往","color":"gray","bold":false},{"translate":"monsters.broken_moon.3.1.2","fallback":"中間的圓圈範圍內","color":"green","bold":false,"underlined":true},{"translate":"monsters.broken_moon.3.1.3","fallback":"可以防止 ","color":"gray","bold":false,"underlined":false},{"translate":"monsters.broken_moon.3.1.4","fallback":"5 秒後受到傷害","color":"green","bold":false,"underlined":true}]
tellraw @a {"text":"\n"}