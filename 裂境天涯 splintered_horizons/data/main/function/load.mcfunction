function world_area:main/reload

execute as @a at @s run function #main:scoreboard

function music:main

# 鉤爪輔助瞄準
function weapons:type/drop/hook/aim_assist/main
function weapons:type/drop/hook/aim_assist/fx

# 玩家快速替換物品功能
function players:replace/block/main
function players:replace/torch/main
function players:replace/food/main

# 怪物 load
function monsters:load

# 微型太陽
function weapons:type/drop/miniature_sun/rc/main

# 計時器(1s)
schedule function monsters:timer_s 1s
schedule function main:timer/1s 1s

schedule function monsters:chapter_2/abyss_soulcutter/main 10t
schedule function monsters:boss_respawn 1t

# 快捷欄切換

schedule function hotbar_sound:guide 2t