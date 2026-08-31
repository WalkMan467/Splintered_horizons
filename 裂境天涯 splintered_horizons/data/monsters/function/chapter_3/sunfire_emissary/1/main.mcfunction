# ===================================================
# 烈陽使者 技能1 分鏡 / sunfire emissary skill 1 timeline

    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/main ] >>> 烈陽使者 技能1 分鏡 / sunfire emissary skill 1 timeline
    ## Guide [ function monsters:chapter_3/sunfire_emissary/main ] >>> 烈陽使者 主程式 / sunfire emissary main
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/damage/use ] >>> 烈陽使者 技能1 落點傷害 / sunfire emissary skill 1 impact damage
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/raycast/use ] >>> 烈陽使者 技能1 射線 入口 / sunfire emissary skill 1 raycast entry
    ## Guide [ function monsters:chapter_3/sunfire_emissary/cast/end ] >>> 烈陽使者 施法 結束並重設冷卻 / sunfire emissary cast end

# ===================================================

execute \
    if score @s sys.skills_freeze matches 0.. run \
    return run \
function monsters:chapter_3/sunfire_emissary/cast/end

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_3/sunfire_emissary/cast/end

execute \
    if score @s monster.skill.casting matches 1 run \
data modify entity @s NoAI set value 1b

execute \
    if score @s monster.skill.casting matches 1 run \
playsound minecraft:entity.illusioner.prepare_mirror voice @a ~ ~1 ~ 1 1.75

execute \
    if score @s monster.skill.casting matches 1 \
    positioned ~ ~ ~4 run \
summon area_effect_cloud ~ ~ ~ {Tags:["monster.sunfire_emissary.1.damage.main"],Duration:21,custom_particle:{type:"block",block_state:"air"},Radius:0}

execute \
    if score @s monster.skill.casting matches 1 \
    positioned ~-3.375 ~ ~-2 run \
summon area_effect_cloud ~ ~ ~ {Tags:["monster.sunfire_emissary.1.damage.main"],Duration:21,custom_particle:{type:"block",block_state:"air"},Radius:0}

execute \
    if score @s monster.skill.casting matches 1 \
    positioned ~3.375 ~ ~-2 run \
summon area_effect_cloud ~ ~ ~ {Tags:["monster.sunfire_emissary.1.damage.main"],Duration:21,custom_particle:{type:"block",block_state:"air"},Radius:0}


execute \
    if score @s monster.skill.casting matches 1..20 rotated 0 45 \
    positioned ~ ~4 ~ run \
function monsters:chapter_3/sunfire_emissary/1/raycast/use

execute \
    if score @s monster.skill.casting matches 1..20 rotated 120 45 \
    positioned ~ ~4 ~ run \
function monsters:chapter_3/sunfire_emissary/1/raycast/use

execute \
    if score @s monster.skill.casting matches 1..20 rotated -120 45 \
    positioned ~ ~4 ~ run \
function monsters:chapter_3/sunfire_emissary/1/raycast/use


execute \
    if score @s monster.skill.casting matches 20 \
    as @e[distance=..6,type=area_effect_cloud,tag=monster.sunfire_emissary.1.damage.main] at @s run \
function monsters:chapter_3/sunfire_emissary/1/damage/use


execute \
    if score @s monster.skill.casting matches 20.. run \
function monsters:chapter_3/sunfire_emissary/cast/end