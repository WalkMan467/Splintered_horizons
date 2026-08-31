# ===================================================
# 魂之神射手 施法 結束並重設冷卻 / soul sharpshooter cast end

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/cast/end ] >>> 魂之神射手 施法 結束並重設冷卻 / soul sharpshooter cast end
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/1/main ] >>> 魂之神射手 技能1 浮空 / soul sharpshooter skill 1 levitate
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/main ] >>> 魂之神射手 技能2 分鏡 / soul sharpshooter skill 2 timeline

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_2.soul_sharpshooter.1
tag @s remove chapter_2.soul_sharpshooter.2

effect clear @s levitation
effect clear @s slow_falling


# Rdm Skill CS


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip

scoreboard players set @s monster.skill.rdm.skill 1

execute \
    if score #nightmare main.difficulty matches 1.. \
    store result score @s monster.skill.rdm.skill run \
random value 1..2

tag @s[scores={monster.skill.rdm.skill=2}] add monsters.nightmare_skills