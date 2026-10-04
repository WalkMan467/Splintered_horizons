# ===================================================
# 地獄之火 主迴圈 / pyrosolis loop

    ## Guide [ function weapons:type/sword/pyrosolis/main ] >>> 地獄之火 主迴圈 / pyrosolis loop
    ## Guide [ function weapons:type/sword/pyrosolis/summon/follow ] >>> 地獄之火 烈陽之影 跟隨 / pyrosolis shade follow
    ## Guide [ function weapons:type/sword/pyrosolis/apocalypse/count ] >>> 地獄之火 末日 累積 / pyrosolis apocalypse accumulate
    ## Guide [ function weapons:type/sword/pyrosolis/summon/end ] >>> 地獄之火 烈陽之影 消失 / pyrosolis shade expire
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

    ## 執行者 : 玩家，位置 = 玩家
    ## 
    ## 召喚物的計時、跟隨、【末日】累積、型態外觀全掛在這裡
    ## 攻擊力提升走 CSE，它自己會計時與收回，這裡不用管
    ## 【末日】的 actionbar 不在這裡刷，改成層數有變動時才亮 1.5 秒（照終焉凝視者那套），
    ## 不然會一直蓋住符文列
    ## 計時故意不丟到 weapons:timer_t，因為歸零那一 tick 要接【天火之罰】

# ===================================================

# 甚麼狀態都沒有、手上也沒拿著劍就不用跑

execute \
    unless score @s weapon.pyrosolis.summon.timer matches 0.. \
    unless score @s weapon.pyrosolis.state matches 1 \
    unless items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:"pyrosolis"}] run \
    return run \
return 0

scoreboard players operation #owner weapon.pyrosolis.summon.id = @s weapon.pyrosolis.summon.id

# ---- 烈陽之影 ----

execute \
    if score @s weapon.pyrosolis.summon.timer matches 1.. run \
function weapons:type/sword/pyrosolis/summon/follow

execute \
    if score @s weapon.pyrosolis.summon.timer matches 1.. run \
function weapons:type/sword/pyrosolis/apocalypse/count

scoreboard players remove @s[scores={weapon.pyrosolis.summon.timer=1..}] weapon.pyrosolis.summon.timer 1

execute \
    if score @s weapon.pyrosolis.summon.timer matches 0 run \
function weapons:type/sword/pyrosolis/summon/end

# ---- 型態 ----

# 層數被燒完或被清掉就退回常態

execute \
    if score @s weapon.pyrosolis.state matches 1 \
    unless score @s weapon.pyrosolis.apocalypse matches 1.. run \
function weapons:type/sword/pyrosolis/state/normal

# 拿在手上的那一把跟著型態走

execute \
    if score @s weapon.pyrosolis.state matches 1 \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:"pyrosolis"}] \
    unless items entity @s weapon.mainhand *[minecraft:custom_data~{pyro_active:true}] run \
item modify entity @s weapon.mainhand weapons:type/sword/pyrosolis/active

execute \
    unless score @s weapon.pyrosolis.state matches 1 \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:"pyrosolis"}] \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{pyro_active:true}] run \
item modify entity @s weapon.mainhand weapons:type/sword/pyrosolis/normal

# 激活型態的火粒子

execute \
    if score @s weapon.pyrosolis.state matches 1 \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:"pyrosolis"}] run \
particle flame ~ ~1 ~ 0.4 0.5 0.4 0.01 2 normal @a
