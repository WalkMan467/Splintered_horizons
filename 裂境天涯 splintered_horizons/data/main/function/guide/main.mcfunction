# @s = all entities

# 椅子
execute as @s[tag=system.sit_down,type=interaction] run function system:sit_down/interaction/main

execute as @s[type=!#dummy_mob,type=!player] at @s run function armors:type/black_hole/boots/effect/main

# 武器
function weapons:type/core/main

function main:duration

function system:portal/loop
execute as @s[type=interaction] run function system:campfire/interaction/main
function monsters:main

execute as @s[type=marker] run function spawner:main