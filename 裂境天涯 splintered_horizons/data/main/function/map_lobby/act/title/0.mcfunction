scoreboard players add #main.gamestart.title global.main 1

execute if score #main.gamestart.title global.main matches 20..80 run title @a title {"translate": "main.start.title.1",fallback: "裂境天涯", "color": "white"}
execute if score #main.gamestart.title global.main matches 20..80 run title @a times 0 2 20
execute if score #main.gamestart.title global.main matches 20..80 run title @a subtitle {"translate": "main.start.title.2",fallback: "《始源與終焉》","color": "gold"}
execute if score #main.gamestart.title global.main matches 20 as @a at @s run playsound minecraft:block.end_portal.spawn voice @s ~ ~1 ~ 0.25 1

execute if score #main.gamestart.title global.main matches 80..140 run title @a title {"translate": "main.start.title.3",fallback: "由 WalkMan467 製作", "color": "white"}
execute if score #main.gamestart.title global.main matches 80..140 run title @a times 0 2 20
execute if score #main.gamestart.title global.main matches 80..140 run title @a subtitle {"translate": "main.start.title.4",fallback: "準備好了嗎?","color": "gold"}

execute if score #main.gamestart.title global.main matches 140..160 run title @a title {"text":"5","color": "green","bold": true}
execute if score #main.gamestart.title global.main matches 140..160 run title @a times 0 2 20
execute if score #main.gamestart.title global.main matches 140..160 run title @a subtitle ""
execute if score #main.gamestart.title global.main matches 140 as @a at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.25 2

execute if score #main.gamestart.title global.main matches 160..180 run title @a title {"text":"4","color": "green","bold": true}
execute if score #main.gamestart.title global.main matches 160..180 run title @a times 0 2 20
execute if score #main.gamestart.title global.main matches 160..180 run title @a subtitle ""
execute if score #main.gamestart.title global.main matches 160 as @a at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.25 2

execute if score #main.gamestart.title global.main matches 180..200 run title @a title {"text":"3","color": "gold","bold": true}
execute if score #main.gamestart.title global.main matches 180..200 run title @a times 0 2 20
execute if score #main.gamestart.title global.main matches 180..200 run title @a subtitle ""
execute if score #main.gamestart.title global.main matches 180 as @a at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.25 2

execute if score #main.gamestart.title global.main matches 200..220 run title @a title {"text":"2","color": "gold","bold": true}
execute if score #main.gamestart.title global.main matches 200..220 run title @a times 0 20 20
execute if score #main.gamestart.title global.main matches 200..220 run title @a subtitle ""
execute if score #main.gamestart.title global.main matches 200 as @a at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.25 2

execute if score #main.gamestart.title global.main matches 220..240 run title @a title {"text":"1","color": "red","bold": true}
execute if score #main.gamestart.title global.main matches 220..240 run title @a times 0 20 20
execute if score #main.gamestart.title global.main matches 220..240 run title @a subtitle ""
execute if score #main.gamestart.title global.main matches 220 as @a at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.25 2

execute if score #main.gamestart.title global.main matches 260 run title @a title ""
execute if score #main.gamestart.title global.main matches 260 run title @a subtitle ""
execute if score #main.gamestart.title global.main matches 260 run title @a times 20 20 20
execute if score #main.gamestart.title global.main matches 260 run function main:map_lobby/act/start

execute if score #main.gamestart.title global.main matches 0..260 run schedule function main:map_lobby/act/title/0 1t