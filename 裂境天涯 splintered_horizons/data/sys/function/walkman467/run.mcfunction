execute on target run playsound minecraft:item.trident.return voice @s ~ ~1 ~ 1 1
execute on target run playsound minecraft:item.hoe.till voice @s ~ ~1 ~ 1 1

execute positioned 765 146 995 unless score #sys.walkman467.glowing global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=sys.walkman467,type=mannequin] run data modify entity @s Glowing set value 0b

scoreboard players set #sys.walkman467.glowing global.main 1

execute on target run tellraw @s [{"translate": "sys.walkman467.1", "fallback": "哈囉 %s 我是 WalkMan467", "with": [{"selector": "@s","color": "green","bold": true}],"color": "white","bold": false}]
execute on target run tellraw @s [{"translate": "sys.walkman467.2", "fallback": "夢想成為 Unreal 5、Unity 全職獨立遊戲設計師的技術宅","color": "white"}]
execute on target run tellraw @s [{"translate": "sys.walkman467.3", "fallback": "如果你喜歡這張地圖的話可以點擊下方連結支持我","color": "white"}]
execute on target run tellraw @s [{"translate": "sys.walkman467.4", "fallback": "這會給我很大的創作動力","color": "white"}]
execute on target run tellraw @s [{"text": ""}]
execute on target run tellraw @s [{"text":"【","color": "dark_green","bold": true,click_event:{action:"run_command",command:"/trigger player.detect.click_event.trigger set 9"}},{"translate": "sys.walkman467.5", "fallback": "支持我","color": "dark_green","bold": true,click_event:{action:"run_command",command:"/trigger player.detect.click_event.trigger set 9"}},{"text":"】","color": "dark_green","bold": true,click_event:{action:"run_command",command:"/trigger player.detect.click_event.trigger set 9"}}]
execute on target run tellraw @s [{"text": ""}]
execute on target run tellraw @s [{"translate": "sys.walkman467.6", "fallback": "若你想知道更多地圖的資訊以及設計緣由的話可以查看關於這張地圖的 WIKI","color": "white"}]
execute on target run tellraw @s [{"text": ""}]
execute on target run tellraw @s [{"text":"【","color": "dark_green","bold": true,click_event:{action:"run_command",command:"/trigger player.detect.click_event.trigger set 10"}},{"translate": "sys.walkman467.7", "fallback": "裂境天涯: 始源與終焉 WIKI","color": "dark_green","bold": true,click_event:{action:"run_command",command:"/trigger player.detect.click_event.trigger set 10"}},{"text":"】","color": "dark_green","bold": true,click_event:{action:"run_command",command:"/trigger player.detect.click_event.trigger set 10"}}]
execute on target run tellraw @s [{"text": ""}]

data remove entity @s interaction