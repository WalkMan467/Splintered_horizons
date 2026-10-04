# ===================================================
# 地獄之火 轉常態 / pyrosolis leave active form

    ## Guide [ function weapons:type/sword/pyrosolis/state/normal ] >>> 地獄之火 轉常態 / pyrosolis leave active form
    ## Guide [ function weapons:type/sword/pyrosolis/rc/burning ] >>> 地獄之火 雙生之火 激活強化 / pyrosolis twin flame empowered
    ## Guide [ function weapons:type/sword/pyrosolis/state/active ] >>> 地獄之火 轉激活型態 / pyrosolis enter active form

    ## 執行者 : 玩家
    ## 【末日】燒完就回常態 ; 外觀由 main 同步

# ===================================================

scoreboard players set @s weapon.pyrosolis.state 0

playsound minecraft:block.beacon.deactivate voice @s ~ ~1 ~ 0.8 1.4
