execute unless entity @s[gamemode=!spectator,gamemode=!creative] run return 0
execute if score @s player.shift.skill.disable matches 1.. run return 0

execute if items entity @s armor.head *[custom_data~{active_skills:1b,animation:1b}] run function players:stop_animation
execute if items entity @s armor.head *[custom_data~{active_skills:1b}] run function #armors:active_skills/helmet
execute if items entity @s armor.head *[custom_data~{active_skills:1b}] run return 0

execute if items entity @s armor.chest *[custom_data~{active_skills:1b,animation:1b}] run function players:stop_animation
execute if items entity @s armor.chest *[custom_data~{active_skills:1b}] run function #armors:active_skills/chestplate
execute if items entity @s armor.chest *[custom_data~{active_skills:1b}] run return 0

execute if items entity @s armor.legs *[custom_data~{active_skills:1b,animation:1b}] run function players:stop_animation
execute if items entity @s armor.legs *[custom_data~{active_skills:1b}] run function #armors:active_skills/leggings
execute if items entity @s armor.legs *[custom_data~{active_skills:1b}] run return 0

execute if items entity @s armor.feet *[custom_data~{active_skills:1b,animation:1b}] run function players:stop_animation
execute if items entity @s armor.feet *[custom_data~{active_skills:1b}] run function #armors:active_skills/boots
execute if items entity @s armor.feet *[custom_data~{active_skills:1b}] run return 0