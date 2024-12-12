
execute as @a[tag=!temp,limit=1] run function players:id/2
scoreboard players remove #calculate global.main 1

execute if score #calculate global.main matches 1.. run function players:id/1