# ===================================================
# 虛空移除 / void remove

    ## Guide [ function monsters:void ] >>> 虛空移除 / void remove

# ===================================================

tag @s add void

data merge entity @s[tag=void] {DeathLootTable:"-"}
kill @s[tag=void]

scoreboard players remove #aj.performance_limit global.main 1