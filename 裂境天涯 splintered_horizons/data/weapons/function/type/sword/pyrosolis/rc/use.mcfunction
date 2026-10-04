# ===================================================
# 火之魔劍 地獄之火 右鍵 觸發 / sword pyrosolis right click activate

    ## Guide [ function weapons:type/sword/pyrosolis/rc/use ] >>> 火之魔劍 地獄之火 右鍵 觸發 / sword pyrosolis right click activate
    ## Guide [ function weapons:type/sword/pyrosolis/rc/cd ] >>> 火之魔劍 地獄之火 右鍵 冷卻 / sword pyrosolis right click cooldown
    ## Guide [ function weapons:type/sword/pyrosolis/rc/base ] >>> 地獄之火 雙生之火 本體 / pyrosolis twin flame base
    ## Guide [ function weapons:type/sword/pyrosolis/rc/burning ] >>> 地獄之火 雙生之火 激活強化 / pyrosolis twin flame empowered
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed

    ## 執行者 : 玩家
    ## 
    ## 雙生之火 : 常態 CD 10 秒，一定會做三件事
    ##   1. 對 6 格內隨機一隻敵人造成 150% 基礎傷害
    ##   2. 召喚【烈陽之影】跟隨玩家 15 秒
    ##   3. 給自己【神聖之火】與【渾沌之雷】符文 15 秒
    ## 
    ## 在【激活】型態而且身上還有【末日】層數時，額外再做
    ##   4. 消耗 1 層【末日】，這一次的 CD 只算 5 秒
    ##   5. 立刻對 6 格內所有敵人造成 250% 基礎傷害
    ##   6. 自己攻擊力 +15% (00:15)，最高疊到 +150%
    ## 
    ## 【激活】型態是【天火之罰】給的，也就是 lore 寫的「處於【燃燒】狀態時」

# ===================================================

# 連點保護 / Click interval

execute \
    if score @s player.click.interval matches 1.. run \
    return run \
return 0

# 第一次使用先建立 CD 分數 / Initialize the cd score on first use

execute \
    unless score @s weapon.pyrosolis.cd matches -2147483648..2147483647 run \
    return run \
function weapons:type/sword/pyrosolis/rc/cd

# CD 還沒到 / Still on cooldown

execute \
    unless score #gametime global.main >= @s weapon.pyrosolis.cd run \
    return run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

scoreboard players set @s player.click.interval 20

# CD 要在扣【末日】之前算，不然折半的判斷會失準

function weapons:type/sword/pyrosolis/rc/cd

# 強化段先跑，裡面會把【末日】扣掉並決定要不要退出【激活】型態

execute \
    if score @s weapon.pyrosolis.state matches 1 \
    if score @s weapon.pyrosolis.apocalypse matches 1.. run \
function weapons:type/sword/pyrosolis/rc/burning

function weapons:type/sword/pyrosolis/rc/base
