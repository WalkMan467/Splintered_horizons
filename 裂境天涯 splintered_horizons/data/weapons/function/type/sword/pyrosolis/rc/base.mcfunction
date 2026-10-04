# ===================================================
# 地獄之火 雙生之火 本體 / pyrosolis twin flame base

    ## Guide [ function weapons:type/sword/pyrosolis/rc/base ] >>> 地獄之火 雙生之火 本體 / pyrosolis twin flame base
    ## Guide [ function weapons:type/sword/pyrosolis/rc/use ] >>> 火之魔劍 地獄之火 右鍵 觸發 / sword pyrosolis right click activate
    ## Guide [ function weapons:type/sword/pyrosolis/dmg/single ] >>> 地獄之火 單體 150% / pyrosolis single target 150%
    ## Guide [ function weapons:type/sword/pyrosolis/summon/use ] >>> 地獄之火 召喚 烈陽之影 / pyrosolis summon sunfire shade

    ## 執行者 : 玩家
    ## 常態與激活型態都會跑這一段

# ===================================================

title @s times 10 0 10
title @s title {"text":"\uE004","font":"minecraft:screen"}

# FX / SFX

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
playsound minecraft:item.firecharge.use voice @a ~ ~1 ~ 1 0.6
playsound minecraft:entity.blaze.shoot voice @a ~ ~1 ~ 0.6 0.75

particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.000,0.000,0.000],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 1 10 force @a
particle flame ~ ~1 ~ 1 1 1 0.05 60 normal @a
particle minecraft:wax_on ~ ~1 ~ 0 0 0 40 20 normal @a

# 狀態類的先做，傷害放最後
#
# 傷害那一段是巨集，展開的指令要是有問題（例如 damage_type 還沒註冊進世界）
# 整串會斷在那裡，後面的召喚與符文就都不會跑到
# 反正同一 tick 內誰先誰後玩家感覺不出來，就把會斷的放最後面

# 1. 召喚【烈陽之影】跟隨玩家 (00:15)

function weapons:type/sword/pyrosolis/summon/use

# 2. 【神聖之火】與【渾沌之雷】符文 (00:15)

scoreboard players set @s weapon.effect.holy_fire 300
scoreboard players set @s weapon.effect.chaotic_thunder 300

# 3. 6 格內隨機一隻敵人 150% 基礎傷害

function weapons:type/sword/pyrosolis/dmg/single
