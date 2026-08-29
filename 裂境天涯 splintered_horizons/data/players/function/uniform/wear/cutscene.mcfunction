# 執行者 : 玩家
# 過場攝影機制服。內容固定、可重複生成，不需要被存進任何 bag。
# 由 players:uniform/refresh 呼叫。
# (原本內嵌在 cutscene:safe_area/0/use，@a 已改為 @s)

clear @s
item replace entity @s armor.head with leather_helmet[tooltip_display={hide_tooltip:true},item_name='{"bold":true,"color":"yellow","italic":false,"text":"Camera"}',minecraft:item_model="camera",equippable={slot:"head",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/cutscene"},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false] 1
