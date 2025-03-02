# 如果這個偵測死亡的 Marker 它 data 裡有 boss 名那就是在BOSS被玩家擊殺後重製那個BOSS 基本設置

    # 用 macro 省窮舉法問題

    execute on passengers run data modify storage death_temp name set from entity @s data.Death
    execute on passengers if data entity @s data.Death on vehicle if entity @p[distance=..60] run function monsters:detect_kill/run with storage death_temp
    execute on passengers as @s[type=marker,tag=monster.marker] run kill @s


# 殺死偵測死亡的 Marker

    execute on passengers run kill @s