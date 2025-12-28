scoreboard players remove #monster.sunfire_emissary monster.sunfire_emissary.1.raycast 1

particle dust{color:[1.000,0.369,0.000],scale:1} ~ ~ ~ 0 0 0 0 1 force

# 擊中方塊

execute \
    if score #monster.sunfire_emissary monster.sunfire_emissary.1.raycast matches 2.. \
    positioned ^ ^ ^0.25 run \
function monsters:chapter_3/sunfire_emissary/1/raycast/detect

# 到達最大距離

execute \
    if score #monster.sunfire_emissary monster.sunfire_emissary.1.raycast matches 1 \
    positioned ^ ^ ^0.25 run \
function monsters:chapter_3/sunfire_emissary/1/raycast/end