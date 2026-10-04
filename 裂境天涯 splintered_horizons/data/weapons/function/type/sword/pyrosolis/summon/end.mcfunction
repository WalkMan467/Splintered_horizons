# ===================================================
# 地獄之火 烈陽之影 消失 / pyrosolis shade expire

    ## Guide [ function weapons:type/sword/pyrosolis/summon/end ] >>> 地獄之火 烈陽之影 消失 / pyrosolis shade expire
    ## Guide [ function weapons:type/sword/pyrosolis/main ] >>> 地獄之火 主迴圈 / pyrosolis loop
    ## Guide [ function weapons:type/sword/pyrosolis/summon/boom ] >>> 地獄之火 烈陽之影 天火之罰 / pyrosolis shade heavenly punishment
    ## Guide [ function weapons:type/sword/pyrosolis/state/active ] >>> 地獄之火 轉激活型態 / pyrosolis enter active form

    ## 執行者 : 玩家，位置 = 玩家
    ## 
    ## 天火之罰 : 召喚物消失的那一刻在它飄的地方放 250% 範圍傷害 + 熵蝕，然後劍轉【激活】型態
    ## 傷害要掛在玩家頭上，所以 as 保持是玩家，只有位置換到召喚物身上

# ===================================================

scoreboard players set @s weapon.pyrosolis.summon.timer -1

scoreboard players operation #owner weapon.pyrosolis.summon.id = @s weapon.pyrosolis.summon.id

execute \
    as @e[tag=weapon.pyrosolis.summon,type=item_display] \
    if score @s weapon.pyrosolis.summon.id = #owner weapon.pyrosolis.summon.id run \
tag @s add weapon.pyrosolis.summon.mine

# 連召喚物都不在了就只收尾，不放天火之罰

execute \
    unless entity @e[sort=arbitrary,limit=1,tag=weapon.pyrosolis.summon.mine,type=item_display] run \
    return run \
return 0

# 轉【激活】型態 ; 沒攢到層數就不轉，不然進去也沒東西燒
# 擺在 boom 之前，boom 裡的傷害斷掉也不會害型態切不過去

execute \
    if score @s weapon.pyrosolis.apocalypse matches 1.. run \
function weapons:type/sword/pyrosolis/state/active

execute \
    at @n[tag=weapon.pyrosolis.summon.mine,type=item_display] run \
function weapons:type/sword/pyrosolis/summon/boom

kill @e[tag=weapon.pyrosolis.summon.mine,type=item_display]
