# ===================================================
# 水之魔劍 水鏡之光 切換 water 特效 rdm pos racast / sword aquilumera switch water visuals rdm pos racast

    ## Guide [ function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast ] >>> 水之魔劍 水鏡之光 切換 water 特效 rdm pos racast / sword aquilumera switch water visuals rdm pos racast
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/end ] >>> 水之魔劍 水鏡之光 切換 water 特效 rdm pos 結束 / sword aquilumera switch water visuals rdm pos finish
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/point ] >>> 水之魔劍 水鏡之光 切換 water 特效 rdm pos 定位點 / sword aquilumera switch water visuals rdm pos point
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/use ] >>> 水之魔劍 水鏡之光 切換 water 特效 rdm pos 觸發 / sword aquilumera switch water visuals rdm pos activate

# ===================================================


execute \
    unless block ~ ~ ~ #penetrate run \
    return run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/end
scoreboard players remove $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast 1

# particle flame ~ ~ ~ 0 0 0 0 5 force @a


execute \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast matches 1.. rotated ~ 90 \
    positioned ^ ^ ^1 \
    unless block ~ ~ ~ #penetrate run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/point

execute \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast matches ..1 rotated ~ 90 \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ #penetrate run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/end

execute \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast matches 1.. rotated ~ 90 \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ #penetrate run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast