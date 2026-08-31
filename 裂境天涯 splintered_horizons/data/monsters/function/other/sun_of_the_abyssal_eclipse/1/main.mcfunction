# ===================================================
# 暗蝕的烈陽 技能1 分鏡 / sun of the abyssal eclipse skill 1 timeline

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/main ] >>> 暗蝕的烈陽 技能1 分鏡 / sun of the abyssal eclipse skill 1 timeline
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/main ] >>> 暗蝕的烈陽 主程式 / sun of the abyssal eclipse main
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/damage/use ] >>> 暗蝕的烈陽 技能1 落點傷害 / sun of the abyssal eclipse skill 1 impact damage
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/use ] >>> 暗蝕的烈陽 技能1 射線 入口 / sun of the abyssal eclipse skill 1 raycast entry
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/cast/end ] >>> 暗蝕的烈陽 施法 結束並重設冷卻 / sun of the abyssal eclipse cast end

# ===================================================

execute \
    if score @s monster.skill.casting matches 1 run \
data modify entity @s NoAI set value 1b

execute \
    if score @s monster.skill.casting matches 1 run \
playsound minecraft:entity.illusioner.prepare_mirror voice @a ~ ~1 ~ 1 1.75

execute \
    if score @s monster.skill.casting matches 1 \
    positioned ~ ~ ~4 run \
summon area_effect_cloud ~ ~ ~ {Tags:["monster.sun_of_the_abyssal_eclipse.1.damage.main"],Duration:21,custom_particle:{type:"block",block_state:"air"},Radius:0}

execute \
    if score @s monster.skill.casting matches 1 \
    positioned ~-3.375 ~ ~-2 run \
summon area_effect_cloud ~ ~ ~ {Tags:["monster.sun_of_the_abyssal_eclipse.1.damage.main"],Duration:21,custom_particle:{type:"block",block_state:"air"},Radius:0}

execute \
    if score @s monster.skill.casting matches 1 \
    positioned ~3.375 ~ ~-2 run \
summon area_effect_cloud ~ ~ ~ {Tags:["monster.sun_of_the_abyssal_eclipse.1.damage.main"],Duration:21,custom_particle:{type:"block",block_state:"air"},Radius:0}


execute \
    if score @s monster.skill.casting matches 1..20 rotated 0 45 \
    positioned ~ ~4 ~ run \
function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/use

execute \
    if score @s monster.skill.casting matches 1..20 rotated 120 45 \
    positioned ~ ~4 ~ run \
function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/use

execute \
    if score @s monster.skill.casting matches 1..20 rotated -120 45 \
    positioned ~ ~4 ~ run \
function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/use


execute \
    if score @s monster.skill.casting matches 20 \
    as @e[distance=..6,type=area_effect_cloud,tag=monster.sun_of_the_abyssal_eclipse.1.damage.main] at @s run \
function monsters:other/sun_of_the_abyssal_eclipse/1/damage/use


execute \
    if score @s monster.skill.casting matches 20.. run \
function monsters:other/sun_of_the_abyssal_eclipse/cast/end