# @s = all entities

# Equipment
execute as @s[type=!#dummy_mob,type=!player] at @s run function armors:type/black_hole/boots/effect/main

# Entity Lifetime Timer
function main:duration/main

# Portal
function system:portal/loop

# Monsters
function monsters:main

# Spawners (Detect the Silver Fish location, then execute 'function monsters:summon/<monsters>' and remove the Silver Fish)
execute as @s[type=silverfish] run function spawner:main

# Others
execute as @s[type=interaction,tag=system.campfire] run function system:campfire/interaction/main

