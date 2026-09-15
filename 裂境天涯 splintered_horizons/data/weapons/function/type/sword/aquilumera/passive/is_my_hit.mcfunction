# ===================================================
# 水之魔劍 水鏡之光 被動 是否為自己打的 / sword aquilumera passive is my hit

    ## Guide [ function weapons:type/sword/aquilumera/passive/is_my_hit ] >>> 水之魔劍 水鏡之光 被動 是否為自己打的 / sword aquilumera passive is my hit
    ## Guide [ function weapons:type/sword/aquilumera/passive/hit ] >>> 水之魔劍 水鏡之光 被動 近戰命中 / sword aquilumera passive melee hit

# ===================================================

# 執行者 : 候選的怪物
# 最後一個打它的是觸發進度的那個玩家就回傳 1，否則整支不會執行到任何指令，結果是 0

execute \
    on attacker \
    if entity @s[tag=weapon.aquilumera.hitter] run \
return 1
