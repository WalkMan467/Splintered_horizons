advancement revoke @s only armors:type/black_hole/boots/power

execute unless items entity @s armor.feet *[custom_data~{black_hole:1b}] run return 0
execute if score @s armor.black_hole.boots.power matches 10.. run return 0

scoreboard players add @s armor.black_hole.boots.power 1

scoreboard players set @s player.actionbar.state_machine 2
scoreboard players set @s player.actionbar.state_machine.timer 20