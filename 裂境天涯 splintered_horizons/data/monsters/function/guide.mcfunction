execute unless score #difficulty global.main matches 1.. run return 0

execute as @a at @s as @e[type=!player,tag=!aj.global.root,tag=!aj.global.camera,tag=!aj.display,distance=..70,limit=40,sort=nearest] at @s run function monsters:main