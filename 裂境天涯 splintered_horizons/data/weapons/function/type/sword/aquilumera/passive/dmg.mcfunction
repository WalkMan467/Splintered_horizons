# ===================================================
# 水之魔劍 水鏡之光 被動 傷害 / sword aquilumera passive damage

    ## Guide [ function weapons:type/sword/aquilumera/passive/dmg ] >>> 水之魔劍 水鏡之光 被動 傷害 / sword aquilumera passive damage
    ## Guide [ function weapons:type/sword/aquilumera/passive/on_attacker ] >>> 水之魔劍 水鏡之光 被動 on attacker / sword aquilumera passive on attacker

# ===================================================

# dmg
execute \
    on attacker \
    unless score @s weapon.effect.starry_sky_frost matches 1.. run \
return 0

tag @s add dmger

execute \
    on attacker run \
function weapons:type/sword/aquilumera/passive/on_attacker
