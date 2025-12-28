
execute \
    if score @s monster.skill.freeze matches 0.. run \
function monsters:chapter_1/abyssal_soulreaper/cast/end

execute \
    if score @s monster.skill.freeze matches 0.. run \
return 0


execute \
    if score @s monster.skill.casting matches 2 run \
function monsters:chapter_1/abyssal_soulreaper/1/0


execute \
    if score @s monster.skill.casting matches 22 run \
function monsters:chapter_1/abyssal_soulreaper/1/1

execute \
    if score @s monster.skill.casting matches 22.. \
    as @e[tag=monsters.abyssal_soulreaper.1.display,type=item_display] at @s run \
function monsters:chapter_1/abyssal_soulreaper/1/2


execute \
    if score @s monster.skill.casting matches 22.. run \
rotate @s ~35 0


execute \
    if score @s monster.skill.casting matches 34 run \
function monsters:chapter_1/abyssal_soulreaper/1/3

execute \
    if score @s monster.skill.casting matches 34.. run \
function monsters:chapter_1/abyssal_soulreaper/cast/end