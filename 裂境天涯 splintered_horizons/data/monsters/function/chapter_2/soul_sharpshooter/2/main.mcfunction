# ===================================================
# 魂之神射手 技能2 分鏡 / soul sharpshooter skill 2 timeline

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/main ] >>> 魂之神射手 技能2 分鏡 / soul sharpshooter skill 2 timeline
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/main ] >>> 魂之神射手 主程式 / soul sharpshooter main
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/0 ] >>> 魂之神射手 技能2 生成追魂體 / soul sharpshooter skill 2 spawn ghost
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/remove/1 ] >>> 追魂體 移除 特效 / ghost key remove fx
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/cast/end ] >>> 魂之神射手 施法 結束並重設冷卻 / soul sharpshooter cast end

# ===================================================

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s monster.skill.silence matches 1.. run \
    return run \
function monsters:chapter_2/soul_sharpshooter/cast/end

execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_2/soul_sharpshooter/2/0


execute \
    if score @s monster.skill.casting matches 1.. \
    as @e[sort=arbitrary,distance=..20,tag=monsters.soul_sharpshooter.ghost.act,type=interaction] at @s \
    if data entity @s attack.timestamp run \
function monsters:chapter_2/soul_sharpshooter/2/key/remove/1

execute \
    if score @s monster.skill.casting matches 1.. \
    as @e[sort=arbitrary,distance=..20,tag=monsters.soul_sharpshooter.ghost.act,type=interaction] at @s \
    if data entity @s interaction.timestamp run \
function monsters:chapter_2/soul_sharpshooter/2/key/remove/1

execute \
    if score @s monster.skill.casting matches 1.. run \
particle ominous_spawning ~ ~0.5 ~ 0.5 1 0.5 0 5 normal @a

execute \
    if score @s monster.skill.casting matches 1.. run \
particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 1 normal @a

execute \
    if score @s monster.skill.casting matches 100.. run \
function monsters:chapter_2/soul_sharpshooter/cast/end