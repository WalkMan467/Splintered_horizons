# @s = all entities
execute unless score #difficulty global.main matches 1.. run kill @s[tag=monster.marker,type=marker]

# 椅子
execute as @s[tag=system.sit_down,type=interaction] run function system:sit_down/interaction/main

# 裝備
execute as @s[type=!#dummy_mob,type=!player] at @s run function armors:type/black_hole/boots/effect/main

# 武器
function weapons:type/core/main

# 實體存在時間計時器
function main:duration/main

# 傳送門
function system:portal/loop

# 怪物
function monsters:main

# 生怪磚 (偵測 Silver Fish 位置，然後執行 function monsters:summon/<monsters> 跟 移除 Silver Fish)
execute as @s[type=silverfish] run function spawner:main

# 其他
function system:darkness_area/main
execute as @s[type=interaction] run function system:campfire/interaction/main

