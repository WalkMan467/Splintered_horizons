# ===================================================
# 鐮 終焉雙重火 被動 擊殺 / scythe flame of finality passive on kill

    ## Guide [ function weapons:type/scythe/flame_of_finality/passive/kill ] >>> 鐮 終焉雙重火 被動 擊殺 / scythe flame of finality passive on kill

# ===================================================

advancement revoke @s only weapons:type/scythe/flame_of_finality/passive/kill

execute \
    unless score @s player.finality_tunder matches 6.. run \
scoreboard players add @s player.finality_tunder 1

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s subtitle ""
title @s times 5 5 5