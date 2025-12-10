
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s ["",{"text":"<系統> ","bold":true,"color":"aqua"},"你現在打開的是有關訓練人偶的設定介面！點擊下方文字調整！\n"]

execute store result score #temp wma.main run attribute @e[tag=wma.dummy,sort=random,limit=1] armor base get
execute store result score #temp2 wma.main run attribute @e[tag=wma.dummy,sort=random,limit=1] armor_toughness base get

tellraw @s {"text":"  •  調整基礎盔甲值 & 盔甲坦度","click_event":{"action":"suggest_command","command":"/function wma:dummy/sys/base_armor {armor:0,armor_tough:0}"},"hover_event":{"action":"show_text","value":[{"text":"🛡盔甲值 : ","color":"dark_aqua"},{"score":{"name":"#temp","objective":"wma.main"}},{"text":" | ","color":"dark_aqua"},{"text":"🛡盔甲坦度 : ","color":"dark_aqua"},{"score":{"name":"#temp2","objective":"wma.main"}}]}}
execute unless data storage wma:data dummy.silent run data modify storage wma:data dummy.silent_info set value '{"text":"[否]","color":"red"}'
execute unless data storage wma:data dummy.silent run data modify storage wma:data dummy.silent set value 0b
tellraw @s {"text":"  •  是否靜音訓練人偶","click_event":{"action":"run_command","command":"/function wma:dummy/sys/btn_silent"},"hover_event":{"action":"show_text","value":["現在狀態 : ",{"nbt":"dummy.silent_info","storage":"wma:data","interpret":true}]}}
tellraw @s {"text":"  •  討回訓練人偶的所有裝備","click_event":{"action":"run_command","command":"/function wma:dummy/sys/drop_all_armor"}}
tellraw @s {"text":"  •  獲得整套無防護的盔甲","click_event":{"action":"run_command","command":"/function wma:dummy/sys/zero_armor_item"},"hover_event":{"action":"show_text","value":["用來測試附魔之類的東西(. ❛ ᴗ ❛.)"]}}
tellraw @s ["",{"text":"     ◦  [頭盔]","click_event":{"action":"run_command","command":"/function wma:dummy/zero_item/helmet"},"hover_event":{"action":"show_text","value":["點我！"]}},{"text":"  [胸甲]","click_event":{"action":"run_command","command":"/function wma:dummy/zero_item/chestplate"},"hover_event":{"action":"show_text","value":["點我！"]}},{"text":"  [護腿]","click_event":{"action":"run_command","command":"/function wma:dummy/zero_item/leggings"},"hover_event":{"action":"show_text","value":["點我！"]}},{"text":"  [鞋子]","click_event":{"action":"run_command","command":"/function wma:dummy/zero_item/boots"},"hover_event":{"action":"show_text","value":["點我！"]}}]
tellraw @s {"text":"  •  獲得整套無傷害的武器","click_event":{"action":"run_command","command":"/function wma:dummy/sys/zero_weapon_item"},"hover_event":{"action":"show_text","value":["用來測試附魔之類的東西(. ❛ ᴗ ❛.)"]}}
tellraw @s {"text":"  •  結束訓練","click_event":{"action":"run_command","command":"/function wma:dummy/kill"}}

tellraw @s [""]