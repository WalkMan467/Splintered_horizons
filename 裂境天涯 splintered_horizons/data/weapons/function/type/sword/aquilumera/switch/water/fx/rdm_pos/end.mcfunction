# ===================================================
# 水之魔劍 水鏡之光 切換 water 特效 rdm pos 結束 / sword aquilumera switch water visuals rdm pos finish

    ## Guide [ function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/end ] >>> 水之魔劍 水鏡之光 切換 water 特效 rdm pos 結束 / sword aquilumera switch water visuals rdm pos finish
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/point ] >>> 水之魔劍 水鏡之光 切換 water 特效 rdm pos 定位點 / sword aquilumera switch water visuals rdm pos point
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast ] >>> 水之魔劍 水鏡之光 切換 water 特效 rdm pos racast / sword aquilumera switch water visuals rdm pos racast

# ===================================================


execute \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id matches 8.. run \
return 0

scoreboard players add $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id 1
execute \
    store result score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast run \
random value 2..8