execute on target run playsound minecraft:ui.button.click voice @s ~ ~1 ~ 0.5 1
execute on target run playsound minecraft:item.book.page_turn voice @s ~ ~1 ~ 1 0.75
execute on target run tellraw @s [{"font":"minecraft:default","translate":"tips.system.forging_table.1","fallback":"這是鍛造台，","color":"white"},{"font":"minecraft:default","translate":"tips.system.forging_table.2","fallback":"你可以透過投擲"},{"translate":"tips.system.forging_table.3","font":"minecraft:default","fallback": "鍛造材料","color":"green","underlined":true},{"translate":"tips.system.forging_table.4","font":"minecraft:default","fallback": "到鐵砧上","color":"white","underlined":false},{"translate":"tips.system.forging_table.5","font":"minecraft:default","fallback": "來合成強力的武器與裝備","color":"white"}]
execute on target run tellraw @s [{"font":"minecraft:default","translate":"tips.system.forging_table.6","fallback":"或者投擲","color":"white"},{"font":"minecraft:default","translate":"item.energy_infusion_stone","fallback":"注能之石","color":"green","underlined":true},{"font":"minecraft:default","translate":"tips.system.forging_table.7","fallback":"與武器來為武器賦予強大的屬性","color":"white","underlined":false}]
execute on target run tellraw @s [{"text":"\n"}]
execute on target run tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","translate":"tips.system.forging_table.8","fallback":"合成之後的武器與裝備將繼承所有鍛造材料的注能與原版附魔","color":"yellow","underlined": false}]
execute on target run tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","translate":"tips.system.forging_table.9","fallback":"所以路程收集到的附魔武器與裝備合成之後將使你變得更強大","color":"yellow","underlined": true}]
execute on target run tellraw @s [{"text":"\n"}]

execute on target run tellraw @s {"translate":"tips.system.forging_table.10","fallback":"【查看合成配方】","bold":true,"color":"dark_green","click_event":{"action":"run_command","command":"/trigger player.detect.click_event.trigger set 8"}}

data remove entity @s interaction