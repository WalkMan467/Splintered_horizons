# ===================================================
# 靈魂拘束箭矢 觸發 / soul restraint arrow activate

    ## Guide [ function weapons:type/arrows/soul_restraint_arrow/use ] >>> 靈魂拘束箭矢 觸發
    ## Guide [ function cse:status_effects/apply/soul_restraint/use ] >>> CSE 靈魂拘束 附加
    ## Guide [ function weapons:type/arrows/detect ] >>> 箭矢 偵測

# ===================================================
#
# 由 arrows/detect 依 advancement 派送：@s = 射箭的玩家、執行位置 = 被射中的敵人。
# 這支箭沒有 ground_detect，射到方塊不會有任何效果。

playsound minecraft:item.trident.thunder voice @a ~ ~1 ~ 1 1.6
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.8
playsound minecraft:entity.allay.death voice @a ~ ~1 ~ 0.8 0.6

particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a
particle dust_color_transition{from_color:[0.000,1.000,0.733],to_color:[0.271,1.000,0.490],scale:1.2} ~ ~1 ~ 0.6 0.8 0.6 0 40 normal @a

# 靈魂拘束 (00:08)，只能在 4 格範圍內移動
# value:0 = 範圍不縮放，固定在 max 設定的格數

execute \
    as @n[sort=nearest,distance=..2,type=!player,type=!#minecraft:dummy_mob] at @s run \
function cse:status_effects/apply/soul_restraint/use {duration:160, value:0, max:4}

advancement revoke @a only weapons:arrows/soul_restraint_arrow

# 取至弓的 250% 真實傷害

execute \
    as @n[sort=nearest,distance=..2,type=!player,type=!#minecraft:dummy_mob] run \
tag @s add dmger

tag @s add atker

scoreboard players set @s dmg_formula.atk_percentage 250

function dmg_formula:weapons/type/arrow/soul_restraint_arrow/calculate
