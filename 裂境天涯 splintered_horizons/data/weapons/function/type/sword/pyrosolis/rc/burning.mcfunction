# ===================================================
# 地獄之火 雙生之火 激活強化 / pyrosolis twin flame empowered

    ## Guide [ function weapons:type/sword/pyrosolis/rc/burning ] >>> 地獄之火 雙生之火 激活強化 / pyrosolis twin flame empowered
    ## Guide [ function weapons:type/sword/pyrosolis/rc/use ] >>> 火之魔劍 地獄之火 右鍵 觸發 / sword pyrosolis right click activate
    ## Guide [ function weapons:type/sword/pyrosolis/dmg/burst ] >>> 地獄之火 範圍 250% / pyrosolis burst 250%
    ## Guide [ function cse:sys/status_effects/use ] >>> CSE 套用屬性狀態 / cse apply attribute status
    ## Guide [ function weapons:type/sword/pyrosolis/state/normal ] >>> 地獄之火 轉常態 / pyrosolis leave active form

    ## 執行者 : 玩家
    ## 進得來就代表【激活】型態 + 至少 1 層【末日】，CD 已經在 rc/cd 折成 5 秒了

# ===================================================

# 消耗一層【末日】

scoreboard players remove @s weapon.pyrosolis.apocalypse 1

# 讓玩家看到扣了一層，1.5 秒後退回符文列

scoreboard players set @s player.actionbar.weapon.pyrosolis 30

playsound minecraft:entity.blaze.death voice @a ~ ~1 ~ 1 0.6
playsound minecraft:item.trident.thunder voice @a ~ ~1 ~ 0.5 1.5

particle flash{color:[1.000,0.317,0.000,1.00]} ~ ~1 ~ 0 0 0 0 3 normal @a[scores={main.light_sensitivity=0}]
particle dust_pillar{block_state:"minecraft:lava"} ~ ~ ~ 2 0 2 1 120 normal @a

# 攻擊力提升 15% (00:15)，最高 150%
#
# 疊層、上限、計時、過期收回全部交給 CSE :
#   base  第一次套用的值
#   value 同 id 再套一次時加上去的值
#   max   上限
#   同 id 重複套用會刷新時間，並且自己開一條 bossbar 顯示剩餘秒數

function cse:sys/status_effects/use {attribute:"attack_damage",duration:300,base:0.15,value:0.15,max:1.5,id:"pyrosolis",type:"add_multiplied_base"}

# 層數燒完就退回常態，剩下的留著下次再燒

execute \
    unless score @s weapon.pyrosolis.apocalypse matches 1.. run \
function weapons:type/sword/pyrosolis/state/normal

# 傷害放最後，理由同 rc/base

# 6 格內所有敵人 250% 基礎傷害

function weapons:type/sword/pyrosolis/dmg/burst
