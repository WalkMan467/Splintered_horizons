# ===================================================
# 地獄之火 轉激活型態 / pyrosolis enter active form

    ## Guide [ function weapons:type/sword/pyrosolis/state/active ] >>> 地獄之火 轉激活型態 / pyrosolis enter active form
    ## Guide [ function weapons:type/sword/pyrosolis/summon/end ] >>> 地獄之火 烈陽之影 消失 / pyrosolis shade expire
    ## Guide [ function weapons:type/sword/pyrosolis/state/normal ] >>> 地獄之火 轉常態 / pyrosolis leave active form

    ## 執行者 : 玩家
    ## 
    ## 資源包目前只有 infernal_blaze/0 與 /1，沒有激活用的貼圖，
    ## 所以外觀先用附魔光澤 + 手上的火粒子表示，之後有模型再把 item_modifier 換成改 item_model 就好
    ## 手上沒拿著劍時也會轉型態，main 每 tick 會把拿在手上的那把同步過去

# ===================================================

scoreboard players set @s weapon.pyrosolis.state 1

playsound minecraft:item.totem.use voice @a ~ ~1 ~ 0.6 1.6
playsound minecraft:block.beacon.activate voice @s ~ ~1 ~ 0.8 1.4

particle flame ~ ~1 ~ 0.5 1 0.5 0.1 80 normal @a

scoreboard players set @s player.actionbar.weapon.pyrosolis 30
