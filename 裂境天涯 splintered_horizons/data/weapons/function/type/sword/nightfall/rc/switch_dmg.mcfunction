# ===================================================
# 劍 夜幕 右鍵 switch dmg / sword nightfall right click switch dmg

    ## Guide [ function weapons:type/sword/nightfall/rc/switch_dmg ] >>> 劍 夜幕 右鍵 switch dmg / sword nightfall right click switch dmg
    ## Guide [ function dmg_formula:weapons/type/sword/nightfall/switch/calculate ] >>> weapons 劍 夜幕 切換 計算 / weapons sword nightfall switch calculate
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================

# dmg
tag @e[type=!#dummy_mob,distance=..4,limit=1,sort=random,type=!player] add dmger
scoreboard players set @s dmg_formula.atk_percentage 100
function dmg_formula:weapons/type/sword/nightfall/switch/calculate

# particle
particle minecraft:sweep_attack ~ ~1 ~ 5 5 5 0 5 force @a
playsound minecraft:item.shield.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.zombie_villager.converted voice @a[distance=..16] ~ ~1 ~ 0.3 2

# reset
scoreboard players remove @s weapon.nightfall.effect.switch_dmg_count 1

execute \
    if score @s weapon.nightfall.effect.switch_dmg_count matches ..0 run \
tag @s remove nightfall.user

#區分這個是引爆的玩家傷害而不是一般玩家普攻命中的傷害
#判斷用計時器 0 = 不是 ; 1.. = 是 
scoreboard players set #is_nightfall.passive? global.main 10