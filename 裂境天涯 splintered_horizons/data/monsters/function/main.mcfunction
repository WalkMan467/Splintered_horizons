# ===================================================
# 怪物 主程式 / monsters main

    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:guide ] >>> 怪物 排程入口 / monsters dispatch entry
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/main ] >>> 深淵黑騎 主程式 / abyssal black knight main
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/main ] >>> 深淵斷魂者 主程式 / abyssal soulreaper main
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/main ] >>> 深淵射手 主程式 / explosion arrow skeleton main
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/main ] >>> 「永劫」的使徒 主程式 / apostle of eternity main
    ## Guide [ function monsters:chapter_2/blackhole_creeper/main ] >>> 黑洞苦力怕 主程式 / blackhole creeper main
    ## Guide [ function monsters:chapter_2/forest_messenger/main ] >>> 森林信使 主程式 / forest messenger main
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/main ] >>> 魂之神射手 主程式 / soul sharpshooter main
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/main ] >>> 血滴子蜘蛛 主程式 / bloody blade spider main
    ## Guide [ function monsters:chapter_3/corroder/main ] >>> 腐蝕者 主程式 / corroder main
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/main ] >>> 時空裂痕的使者 主程式 / emissary of the temporal rift main
    ## Guide [ function monsters:chapter_3/finality_creeper/main ] >>> 終焉苦力怕 自爆 / finality creeper detonate
    ## Guide [ function monsters:chapter_3/sunfire_emissary/main ] >>> 烈陽使者 主程式 / sunfire emissary main
    ## Guide [ function monsters:generic/freeze/main ] >>> 凍結 主程式 / freeze main
    ## Guide [ function monsters:other/abyss_crystal/main ] >>> 深淵水晶 主程式 / abyss crystal main
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/main ] >>> 暗蝕的烈陽 主程式 / sun of the abyssal eclipse main
    ## Guide [ function monsters:unlease_skill_tip/use ] >>> 技能預告 分派 / skill tip dispatch

# ===================================================

## ----- Monster Main Program ----- ##


execute \
    unless score #difficulty global.main matches 1.. run \
return 0

execute \
    as @s[type=area_effect_cloud] at @s run \
function monsters:chapter_2/blackhole_creeper/main

function monsters:chapter_2/soul_sharpshooter/main
function monsters:chapter_2/forest_messenger/main
function monsters:chapter_2/apostle_of_eternity/main
function monsters:chapter_1/abyssal_black_knight/main
function monsters:chapter_1/abyssal_soulreaper/main
function monsters:chapter_1/explosion_arrow_skeleton/main
function monsters:chapter_3/corroder/main
function monsters:chapter_3/sunfire_emissary/main
function monsters:chapter_3/emissary_of_the_temporal_rift/main
function monsters:chapter_3/bloody_blade_spider/main

function monsters:other/abyss_crystal/main
function monsters:other/sun_of_the_abyssal_eclipse/main


execute \
    as @s[type=area_effect_cloud] at @s run \
function monsters:chapter_3/finality_creeper/main

## ----- Monster Skill sys ----- ##
# 技能冷卻改為絕對截止時間制：monster.skill.cast.at 存的是「可以放技能的那一 tick」，
# 檢查時只跟 #now 比大小 比大小是冪等的，所以怪被 guide 的 limit 節流而漏跑幾 tick
# 完全不影響 —— 玩家回來時 #now 早就超過 at，技能就是就緒狀態 

# 剩餘冷卻，給預告與 debug 用（絕對時間制看不到倒數，需要時現算）

scoreboard players operation @s monster.skill.cast.cd = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.cd -= #gametime global.main

# Monster is about to cast a spell (1s warning)
# 用 1..30 而非剛好等於 30：怪可能被節流跳過某些 tick，剛好踩在 30 的那一刻不保證看得到 
# tip 旗標確保每輪冷卻只預告一次，設定新冷卻時會一併 reset 

execute \
    as @s[tag=monster,tag=!hide_skill_tip] \
    unless score @s monster.skill.cast.tip matches 1 \
    if score @s monster.skill.cast.cd matches 1..30 \
    unless score @s sys.skills_freeze matches 0.. run \
function monsters:unlease_skill_tip/use

execute \
    if score @s monster.skill.cast.cd matches ..30 run \
scoreboard players set @s monster.skill.cast.tip 1

# Monster skill cooldown
# 不再遞減 凍結／沉默時改成把截止時間一起往後推，效果等同暫停倒數 

scoreboard players set @s monster.skill.paused 1

execute \
    unless entity @s[tag=freeze] \
    unless entity @s[tag=sys.silence] \
    unless score @s sys.skills_freeze matches 0.. run \
scoreboard players set @s monster.skill.paused 0

execute \
    if score @s monster.skill.paused matches 1 \
    if score @s monster.skill.cast.at matches ..1999999999 run \
scoreboard players add @s monster.skill.cast.at 1

# Monster Freeze

execute \
    if score @s sys.skills_freeze matches 0.. at @s run \
function monsters:generic/freeze/main

# Monster skill is being cast

execute \
    unless entity @s[tag=sys.silence] run \
scoreboard players add @s[tag=monster] monster.skill.casting 1

# Skill silenced
scoreboard players remove @s[tag=monster,scores={monster.skill.silence=0..}] monster.skill.silence 1

tag @s remove monsters.guide