# If the death detection Marker contains the boss name in its data, it means resetting the basic settings of that BOSS after the BOSS is killed by the player

    # Use macros to avoid exhaustive enumeration issues

    # 一隻怪身上可能同時掛著好幾個死亡偵測 Marker（例如凍結會再加一個），
    # 每個 Marker 都得配自己的 data.Death 各跑一次
    # 先全部寫進同一份 storage 再一起跑的話，後面的 Marker 會把前面的值蓋掉，
    # 只有最後一個會被執行，怪物本體的 kill 就漏了

    execute \
    on passengers \
    as @s[type=marker,tag=monster.marker] \
    if data entity @s data.Death run \
function monsters:detect_kill/marker
    execute \
    on passengers \
    as @s[type=marker,tag=monster.marker] run \
kill @s


# Kill the death detection Marker

    execute \
    on passengers run \
kill @s