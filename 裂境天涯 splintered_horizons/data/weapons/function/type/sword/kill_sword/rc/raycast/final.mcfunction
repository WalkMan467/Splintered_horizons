# ===================================================
# 劍 天地乖離開闢之星 右鍵 射線 final / kill sword right click raycast final

    ## Guide [ function weapons:type/sword/kill_sword/rc/raycast/final ] >>> 劍 天地乖離開闢之星 右鍵 射線 final / kill sword right click raycast final
    ## Guide [ function weapons:type/sword/kill_sword/rc/raycast/detect ] >>> 劍 天地乖離開闢之星 右鍵 射線 偵測 / kill sword right click raycast detect

# ===================================================

data modify entity @s DeathLootTable set value ""
damage @s 9999999 weapons:type/sword/kill_sword by @p

particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 1 1 1 1 40 normal
particle flash{color:[1.0,0.0,0.0,1.0]} ~ ~1 ~ 0.5 0.5 0.5 1 2 normal

scoreboard players reset #weapon.kill_sword.raycast main.raycast