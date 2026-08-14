# ===================================================
# 水之魔劍 水鏡之光 被動 on attacker / sword aquilumera passive on attacker

    ## Guide [ function weapons:type/sword/aquilumera/passive/on_attacker ] >>> 水之魔劍 水鏡之光 被動 on attacker / sword aquilumera passive on attacker
    ## Guide [ function dmg_formula:weapons/type/sword/aquilumera/passive/calculate ] >>> weapons 水之魔劍 水鏡之光 被動 計算 / weapons sword aquilumera passive calculate
    ## Guide [ function weapons:type/sword/aquilumera/passive/dmg ] >>> 水之魔劍 水鏡之光 被動 傷害 / sword aquilumera passive damage

# ===================================================

tag @s add atker
scoreboard players set @s dmg_formula.atk_percentage 50
function dmg_formula:weapons/type/sword/aquilumera/passive/calculate
playsound minecraft:item.trident.throw voice @a ~ ~1 ~ 1 0.625