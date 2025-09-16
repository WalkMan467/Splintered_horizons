
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s ["",{"text":"<系統> ","bold":true,"color":"aqua"},"你現在打開的是wma資料包的設定介面！點擊下方文字調整！\n"]

tellraw @s {"text":"  •  wma資料包操作說明！","color":"#98E1E1","click_event":{"action":"run_command","command":"/function wma:tutorial/-menu"}}
execute unless data storage wma:data dummy.dmg_scale run data modify storage wma:data dummy.dmg_scale set value 1.1f
tellraw @s {"text":"  •  調整傷害文字顯示大小","click_event":{"action":"suggest_command","command":"/function wma:dmg_show/setting_scale {scale:1.1}"},"hover_event":{"action":"show_text","value":[{"text":"目前大小 : ","color":"light_purple"},{"nbt":"dummy.dmg_scale","storage":"wma:data","interpret":false}]}}
execute unless data storage wma:data dummy.btn run data modify storage wma:data dummy.btn_info set value '{"text":"[開啟]","color":"green"}'
execute unless data storage wma:data dummy.btn run data modify storage wma:data dummy.btn set value 1b
tellraw @s {"text":"  •  是否允許任何有關訓練人偶的設定","click_event":{"action":"run_command","command":"/function wma:dummy/sys/btn_show"},"hover_event":{"action":"show_text","value":["現在狀態 : ",{"nbt":"dummy.btn_info","storage":"wma:data","interpret":true}]}}

tellraw @s [""]