# ===================================================
# 深淵斷魂者 施法 結束並重設冷卻 / abyssal soulreaper cast end

    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/cast/end ] >>> 深淵斷魂者 施法 結束並重設冷卻 / abyssal soulreaper cast end
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/main ] >>> 深淵斷魂者 技能1 分鏡 / abyssal soulreaper skill 1 timeline
    ## Guide [ function monsters:chapter_1/corruptor/kill ] >>> 腐化者 死亡 凋零雲 / corruptor on kill wither cloud

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_1.abyssal_soulreaper.1
tag @s remove chapter_1.abyssal_soulreaper.2

attribute @s minecraft:follow_range modifier remove monster.abyssal_soulreaper.skill
attribute @s minecraft:attack_damage modifier remove monster.abyssal_soulreaper.skill
attribute @s minecraft:movement_speed modifier remove monster.abyssal_soulreaper.skill
attribute @s minecraft:jump_strength modifier remove monster.abyssal_soulreaper.skill
attribute @s minecraft:gravity modifier remove monster.abyssal_soulreaper.skill
attribute @s minecraft:safe_fall_distance modifier remove monster.abyssal_soulreaper.skill

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip