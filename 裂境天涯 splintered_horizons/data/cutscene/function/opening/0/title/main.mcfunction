execute if score cutscene.opening.title cutscene.opening.title.timer matches 630.. run return 0

scoreboard players add cutscene.opening.title cutscene.opening.title.timer 1

execute if score cutscene.opening.title cutscene.opening.title.timer matches 1 run title @a title {"translate": "cutscene.opening.title.1","color": "white","bold": false}
execute if score cutscene.opening.title cutscene.opening.title.timer matches 1 run title @a subtitle ""
execute if score cutscene.opening.title cutscene.opening.title.timer matches 1 run title @a times 20 80 20

execute if score cutscene.opening.title cutscene.opening.title.timer matches 140 run title @a title {"translate": "cutscene.opening.title.2","color": "white","bold": false}
execute if score cutscene.opening.title cutscene.opening.title.timer matches 140 run title @a subtitle ""
execute if score cutscene.opening.title cutscene.opening.title.timer matches 140 run title @a times 20 140 20

execute if score cutscene.opening.title cutscene.opening.title.timer matches 210 run title @a subtitle {"translate": "cutscene.opening.title.3","color": "white","bold": false}

execute if score cutscene.opening.title cutscene.opening.title.timer matches 350 run title @a title {"translate": "cutscene.opening.title.4","color": "white","bold": false}
execute if score cutscene.opening.title cutscene.opening.title.timer matches 350 run title @a subtitle ""
execute if score cutscene.opening.title cutscene.opening.title.timer matches 350 run title @a times 20 140 20

execute if score cutscene.opening.title cutscene.opening.title.timer matches 420 run title @a subtitle {"translate": "cutscene.opening.title.5","color": "white","bold": false}

execute if score cutscene.opening.title cutscene.opening.title.timer matches 560 run title @a title {"translate": "cutscene.opening.title.6","color": "white","bold": false}
execute if score cutscene.opening.title cutscene.opening.title.timer matches 560 run title @a subtitle ""
execute if score cutscene.opening.title cutscene.opening.title.timer matches 560 run title @a times 20 140 20

execute if score cutscene.opening.title cutscene.opening.title.timer matches 630 run title @a subtitle {"translate": "cutscene.opening.title.7","color": "white","bold": false}

gamemode spectator @a
execute as @a[gamemode=spectator] at @s run spectate 000000d3-0000-0004-0000-000100000001

schedule function cutscene:opening/0/title/main 1t