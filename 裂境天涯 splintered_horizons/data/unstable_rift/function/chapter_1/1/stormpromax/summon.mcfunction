# ===================================================
# 召喚 亞斯 / summon stormpromax

    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/summon ] >>> 召喚 亞斯 / summon stormpromax
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/setup ] >>> 亞斯 生成後設定 / stormpromax setup
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/main ] >>> 亞斯 排程 / stormpromax scheduler
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/kill ] >>> 亞斯 死亡收尾 / stormpromax on kill
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/void ] >>> 亞斯 強制移除 / stormpromax force remove

# ===================================================
# 手動召喚。目前沒有任何地方自動呼叫它 —— 觸發時機自己接。
#
# 舊地圖那套 boss_respawn（60 格內有人 + CD 到了就 schedule）沒有搬過來，
# 那組 boss.respawn.cd 記分板在這個資料包不存在。

# 已經在場就不要再生一隻

execute \
    if entity @n[tag=stormpromax,type=zombie] run \
return 0

# 血條用全域的 stormpromax，main 與 main.boss 都是靠這個 id 在推數值。
# visible 先關掉，main.boss 會在有人靠近 80 格時才把玩家掛進去。

bossbar add stormpromax [{"translate":"monsters.stormpromax","fallback":"༄ 亞斯 - 來自風暴峽谷的深淵災害 ༄"}]
bossbar set minecraft:stormpromax color blue
bossbar set minecraft:stormpromax style notched_10
bossbar set minecraft:stormpromax visible false

# 競技場中心在終界 -348 349 552，技能 3 的環形高塔座標是照這個點推出來的

execute \
    in minecraft:the_end positioned -348 349 552 summon zombie run \
function unstable_rift:chapter_1/1/stormpromax/setup
