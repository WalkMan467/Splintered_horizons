# ===================================================
# 水之魔劍 水鏡之光 切換 water 特效 mirror 觸發 / sword aquilumera switch water visuals mirror activate

    ## Guide [ function weapons:type/sword/aquilumera/switch/water/fx/mirror/use ] >>> 水之魔劍 水鏡之光 切換 water 特效 mirror 觸發 / sword aquilumera switch water visuals mirror activate
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/fx/mirror/summon ] >>> 水之魔劍 水鏡之光 切換 water 特效 mirror 召喚 / sword aquilumera switch water visuals mirror summon
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/use ] >>> 水之魔劍 水鏡之光 切換 water 特效 rdm pos 觸發 / sword aquilumera switch water visuals rdm pos activate

# ===================================================

execute \
    store result storage temp temp.rotate int 1 run \
random value -180..180

function weapons:type/sword/aquilumera/switch/water/fx/mirror/summon with storage temp temp

data remove storage temp temp

say ok