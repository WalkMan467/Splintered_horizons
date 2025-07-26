
# 初始化
execute unless score @s hp_display matches -2147483648..2147483647 run function hp_display:new

# 顯示設定
data modify storage hp_display CustomName.name set from entity @s data.hp_display.CustomName
execute store result storage hp_display CustomName.hp int 1 store result score @s hp_display run data get entity @s Health
execute store result storage hp_display CustomName.hpmax int 1 store result score @s hp_display.hpmax run attribute @s minecraft:max_health base get

# 結果
data modify entity 000000de-0000-0015-0000-007900000001 text set value [{"text":"[","color":"#808080"},{"nbt":"CustomName.hp","storage":"hp_display","color":"#FF0000"},{"text":"/","color":"#808080"},{"nbt":"CustomName.hpmax","storage":"hp_display","color":"#8b0000"},{"text":"] ","color":"#808080"},{"nbt":"CustomName.name","storage":"hp_display","interpret":true}]
data modify entity @s CustomName set from entity 000000de-0000-0015-0000-007900000001 text
data remove storage hp_display CustomName