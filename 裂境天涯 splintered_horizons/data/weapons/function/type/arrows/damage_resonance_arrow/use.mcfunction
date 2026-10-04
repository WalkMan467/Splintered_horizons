# ===================================================
# 傷害共鳴箭矢 觸發 / damage resonance arrow activate

    ## Guide [ function weapons:type/arrows/damage_resonance_arrow/use ] >>> 傷害共鳴箭矢 觸發
    ## Guide [ function cse:status_effects/apply/damage_resonance/use ] >>> CSE 傷害共鳴 附加
    ## Guide [ function weapons:type/arrows/detect ] >>> 箭矢 偵測

# ===================================================
#
# 兩條路徑都會進到這裡，執行位置都在命中點：
#   命中怪物 -> arrows/detect 依 advancement 派送（@s = 玩家、位置 = 被害者）
#   命中方塊 -> arrows/ground_detect/run 的 $(id) 派送（@s = 箭矢、位置 = 箭矢）
#
# 共鳴本體整套都在 CSE，這裡只負責附加
# 同一 tick 內附加的目標會被 CSE 綁成同一組

playsound minecraft:block.amethyst_block.resonate voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.amethyst_block.chime voice @a ~ ~1 ~ 1 1.25
playsound minecraft:entity.allay.item_given voice @a ~ ~1 ~ 1 0.5

particle minecraft:end_rod ~ ~1 ~ 2 1 2 0.02 40 normal @a
particle dust_color_transition{from_color:[0.984,1.000,0.000],to_color:[1.000,0.600,0.000],scale:1.5} ~ ~1 ~ 2 1 2 0 30 normal @a


execute \
    as @e[distance=..5,type=!player] at @s run \
function cse:status_effects/apply/damage_resonance/use {duration:300}

advancement revoke @a only weapons:arrows/damage_resonance_arrow

function weapons:type/arrows/damage_resonance_arrow/fx

execute \
    as @n[distance=..5,type=!player] at @s run \
tag @s add dmger

tag @s add atker

scoreboard players set @s dmg_formula.atk_percentage 175

function dmg_formula:weapons/type/arrow/damage_resonance_arrow/calculate