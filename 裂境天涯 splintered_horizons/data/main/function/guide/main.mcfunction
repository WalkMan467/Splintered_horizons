# @s = all entities

# 裝備
execute as @s[type=!#dummy_mob,type=!player] at @s run function armors:type/black_hole/boots/effect/main

# 實體存在時間計時器
function main:duration/main

# 傳送門
function system:portal/loop

# 怪物
function monsters:main

# 生怪磚 (偵測 Silver Fish 位置，然後執行 function monsters:summon/<monsters> 跟 移除 Silver Fish)
execute as @s[type=silverfish] run function spawner:main

# 其他
execute as @s[type=interaction,tag=system.campfire] run function system:campfire/interaction/main

