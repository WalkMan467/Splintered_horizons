# ===================================================
# 基礎攻擊傷害計算 / base attack damage calculation

    ## Guide [ function dmg_formula:base_attack ] >>> 將攻擊力與傷害倍率算成實際傷害，寫入 storage temp values

# 公式本體在 [ context_float_provider dmg_formula:base_attack ]，要調整算法改那個檔即可
# 兩個運算元都用虛擬玩家，因此不依賴 /compute 的實體上下文

# ===================================================

# 執行者 : 玩家

execute \
    store result score #temp atk run \
attribute @s minecraft:attack_damage get

scoreboard players operation #pct atk = @s dmg_formula.atk_percentage

data modify storage temp values set compute float dmg_formula:base_attack
