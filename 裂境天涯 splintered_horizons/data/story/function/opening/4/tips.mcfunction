title @s title ""
title @s subtitle {"translate": "tips.beginner_tutorial.1","color":"red","fallback":"擊敗怪物並全部的破壞生怪磚","bold":true}
title @s times 20 40 20

tellraw @s {"translate": "tips.beginner_tutorial.2","color":"white","fallback":"讓我們直接進入實戰環節吧"}
tellraw @s {"translate": "tips.beginner_tutorial.3","color":"dark_aqua","fallback":"前方的特殊怪物只允許你正確地運用符文連動效果才能對其造成傷害","bold":true}
tellraw @s {"translate": "tips.beginner_tutorial.4","color":"red","fallback":"否則他將重置所有血量","underlined":true}
tellraw @s ""
tellraw @s {"translate": "tips.beginner_tutorial.5","color":"white","fallback":"你的 %1$s 可以使你在對敵人造成傷害時觸發技能 %2$s","with":[{"translate": "weapon.wind_sword", "color": "dark_aqua", "bold": true},{"translate": "weapon.wind_sword.skill", "color": "dark_aqua", "bold": true}]}
tellraw @s {"translate": "tips.beginner_tutorial.6","color":"white","fallback":"並且給你 %1$s%2$s 符文 (00:05)","with":[{"translate":"weapon.effect.resplendence","underlined":true,"font":"minecraft:default","color":"#fceb00","italic":false,"bold":true},{"text":"\uE004","font":"minecraft:icon","color":"white","underlined":false,"bold":false}]}
tellraw @s {"translate": "tips.beginner_tutorial.7","color":"white","fallback":"而你的 %1$s 在擁有 %2$s%3$s 時可以無限地觸發 %4$s 技能","with":[{"translate":"weapon.morning_light","color":"#ffd000","italic":false,"bold":true},{"translate":"weapon.effect.resplendence","underlined":true,"font":"minecraft:default","color":"#fceb00","italic":false,"bold":true},{"text":"\uE004","font":"minecraft:icon","color":"white","underlined":false,"bold":false},{"translate":"weapon.morning_light.skill","color":"gold","bold":true}]}
tellraw @s {"translate": "tips.beginner_tutorial.8","color":"white","fallback":"符文的狀態可以從快捷欄上方的 GUI 圖標查看 [%1$s] / [%2$s]","with":[{"text":"\uE004","font":"minecraft:icon","color":"white","underlined":false,"bold":false},{"text":"\uE004","font":"minecraft:icon","color":"#353535","underlined":false,"bold":false}]}
tellraw @s {"translate": "tips.beginner_tutorial.9","color":"white","fallback":"那麼請正確地運用符文與技能的連動擊敗並破壞生怪磚吧"}
tellraw @s {"translate": "tips.beginner_tutorial.10","color":"gold","underlined":true,"fallback":"你的石鎬允許在冒險模式破壞生怪磚"}

playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 0.5

schedule function story:opening/4/main 1t