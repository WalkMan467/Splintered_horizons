# ===================================================
# 地獄之火 末日 累積 / pyrosolis apocalypse accumulate

    ## Guide [ function weapons:type/sword/pyrosolis/apocalypse/count ] >>> 地獄之火 末日 累積 / pyrosolis apocalypse accumulate
    ## Guide [ function weapons:type/sword/pyrosolis/main ] >>> 地獄之火 主迴圈 / pyrosolis loop

    ## 執行者 : 玩家
    ## 
    ## 天火之罰 : 召喚物在場期間，玩家每造成 30 點傷害疊 1 層【末日】，上限 10 層
    ## 
    ## weapon.pyrosolis.dmg.total 是 minecraft.custom:minecraft.damage_dealt，
    ## 這個統計存的是「傷害 x 10」，所以 30 點傷害 = 300
    ## 每 tick 只拿差值，不會因為中途換武器或重載而重算

# ===================================================

scoreboard players operation #delta weapon.pyrosolis.dmg.pool = @s weapon.pyrosolis.dmg.total
scoreboard players operation #delta weapon.pyrosolis.dmg.pool -= @s weapon.pyrosolis.dmg.last
scoreboard players operation @s weapon.pyrosolis.dmg.last = @s weapon.pyrosolis.dmg.total

execute \
    unless score #delta weapon.pyrosolis.dmg.pool matches 1.. run \
    return run \
return 0

scoreboard players operation @s weapon.pyrosolis.dmg.pool += #delta weapon.pyrosolis.dmg.pool

# 整數除法直接算這一筆能換幾層，省掉迴圈

scoreboard players operation #gain weapon.pyrosolis.dmg.pool = @s weapon.pyrosolis.dmg.pool
scoreboard players operation #gain weapon.pyrosolis.dmg.pool /= #per weapon.pyrosolis.dmg.pool

execute \
    unless score #gain weapon.pyrosolis.dmg.pool matches 1.. run \
    return run \
return 0

scoreboard players operation #spent weapon.pyrosolis.dmg.pool = #gain weapon.pyrosolis.dmg.pool
scoreboard players operation #spent weapon.pyrosolis.dmg.pool *= #per weapon.pyrosolis.dmg.pool
scoreboard players operation @s weapon.pyrosolis.dmg.pool -= #spent weapon.pyrosolis.dmg.pool

scoreboard players operation @s weapon.pyrosolis.apocalypse += #gain weapon.pyrosolis.dmg.pool

# 上限 10 層 ; < 是取小的那個

scoreboard players operation @s weapon.pyrosolis.apocalypse < #cap weapon.pyrosolis.apocalypse

playsound minecraft:block.fire.ambient voice @s ~ ~1 ~ 0.6 1.5
playsound minecraft:item.firecharge.use voice @s ~ ~1 ~ 0.3 1.8

# 疊到層數才亮 actionbar，1.5 秒後自己退掉換回符文列

scoreboard players set @s player.actionbar.weapon.pyrosolis 30
