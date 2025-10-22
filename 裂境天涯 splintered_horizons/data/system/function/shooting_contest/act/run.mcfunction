execute on target run playsound minecraft:ui.button.click voice @s ~ ~1 ~ 0.5 1
execute on target run tellraw @s [{"text": "[","color": "white","bold": false},{"text": WalkMan467,"color":"gold","bold": false},{"text": "] ","color": "white","bold": false},{"translate":"system.shooting_contest.1","fallback": "歡迎來到射擊比賽遊戲區，你可以消耗 20 枚 "},{"translate":"weapon.coin_s"},{"translate":"system.shooting_contest.2","fallback": " 來玩一場好玩的射擊比賽！"}]
execute on target run tellraw @s [{"translate":"system.shooting_contest.3","fallback": "是否要玩一場刺激的射擊比賽?"}]
execute on target run tellraw @s [{"text":"\n"}]

execute on target run stopsound @s voice minecraft:voice.mini_game
execute on target run playsound minecraft:voice.mini_game voice @s ~ ~ ~ 1 1

execute on target run tellraw @s [{"translate":"system.shooting_contest.4","fallback": "【來玩一場】","bold":true,"color":"dark_green","click_event": {action:"run_command",command: "/trigger player.detect.click_event.trigger set 3"}}]

data remove entity @s interaction