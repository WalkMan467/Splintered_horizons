execute if items entity @s player.cursor *[custom_data~{disable_drop:1b}] run function players:elytra_switch/reset_2
execute if items entity @s player.cursor *[custom_data~{disable_drop:1b}] run item replace entity @s player.cursor with air
execute unless item entity @s[advancements={players:elytra_switch/true=true}] weapon.offhand *[custom_data~{elytra_switch:1b}] run item replace entity @s weapon.offhand with firework_rocket[tooltip_display={hide_tooltip:true},custom_data={elytra_switch:1b,disable_drop:1b},fireworks={flight_duration:1}] 1

execute unless entity @s[tag=player.death] unless score @s player.disable.elytra_switch matches 1.. if score @s player.detect.air matches 12.. if function players:elytra_switch/area_detect unless predicate players:elytra_switch/disable run advancement grant @s only players:elytra_switch/true
execute unless score @s player.detect.air matches 12.. run advancement grant @s only players:elytra_switch/false
execute unless function players:elytra_switch/area_detect run advancement grant @s only players:elytra_switch/false
execute if predicate players:elytra_switch/disable run advancement grant @s only players:elytra_switch/false

execute if entity @s[tag=player.elytra_switch.safe_fall] unless predicate players:detect/air run function players:elytra_switch/safe_fall/false