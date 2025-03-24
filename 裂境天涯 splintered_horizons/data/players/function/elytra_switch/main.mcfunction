execute if items entity @s player.cursor *[custom_data~{disable_drop:1b}] run function players:elytra_switch/reset_2
execute if items entity @s player.cursor *[custom_data~{disable_drop:1b}] run item replace entity @s player.cursor with air
execute unless items entity @s[advancements={players:elytra_switch/true=true}] weapon.offhand *[custom_data~{elytra_switch:1b}] run item replace entity @s weapon.offhand with firework_rocket[custom_data={elytra_switch:1b,disable_drop:1b},fireworks={flight_duration:1}] 1

execute unless score @s player.disable.elytra_switch matches 1.. if score @s player.detect.air matches 20.. run advancement grant @s only players:elytra_switch/true
execute unless score @s player.detect.air matches 20.. run advancement grant @s only players:elytra_switch/false