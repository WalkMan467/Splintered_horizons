## Redirected to [ function world_area:main/loop ] (冒險 / 生存模式區域偵測) (冒險模式區域二級鎖)

# 生態域
execute if biome ~ ~ ~ #world_area:change_adventure run return 1

# 特殊區域

    # 營火
execute if entity @s[tag=campfire] run return 1