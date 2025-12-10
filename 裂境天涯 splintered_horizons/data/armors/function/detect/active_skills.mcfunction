# ===================================================
# Active skill trigger priority Function

    ## Guide [ function armors:detect/active_skills ] >>> Active skill trigger priority

# ===================================================
# Addressing the issue of multiple button conflicts

    # helmet > chestplate > leggings > boots

execute unless entity @s[gamemode=!spectator,gamemode=!creative] run return 0
execute if score @s player.shift.skill.disable matches 1.. run return 0

execute if items entity @s armor.head *[custom_data~{active_skills:1b,animation:1b}] unless score @s armor.animation_skills.helmet.cd matches 1.. run function players:stop_animation
execute if items entity @s armor.head *[custom_data~{active_skills:1b}] unless score @s armor.animation_skills.helmet.cd matches 1.. run function #armors:active_skills/helmet
execute if items entity @s armor.head *[custom_data~{active_skills:1b}] if score @s armor.animation_skills.return matches 1.. run return 0

execute if items entity @s armor.chest *[custom_data~{active_skills:1b,animation:1b}] unless score @s armor.animation_skills.chestplate.cd matches 1.. run function players:stop_animation
execute if items entity @s armor.chest *[custom_data~{active_skills:1b}] unless score @s armor.animation_skills.chestplate.cd matches 1.. run function #armors:active_skills/chestplate
execute if items entity @s armor.chest *[custom_data~{active_skills:1b}] if score @s armor.animation_skills.return matches 1.. run return 0

execute if items entity @s armor.legs *[custom_data~{active_skills:1b,animation:1b}] unless score @s armor.animation_skills.legs.cd matches 1.. run function players:stop_animation
execute if items entity @s armor.legs *[custom_data~{active_skills:1b}] unless score @s armor.animation_skills.legs.cd matches 1.. run function #armors:active_skills/leggings
execute if items entity @s armor.legs *[custom_data~{active_skills:1b}] if score @s armor.animation_skills.return matches 1.. run return 0

execute if items entity @s armor.feet *[custom_data~{active_skills:1b,animation:1b}] unless score @s armor.animation_skills.feet.cd matches 1.. run function players:stop_animation
execute if items entity @s armor.feet *[custom_data~{active_skills:1b}] unless score @s armor.animation_skills.feet.cd matches 1.. run function #armors:active_skills/boots
execute if items entity @s armor.feet *[custom_data~{active_skills:1b}] if score @s armor.animation_skills.return matches 1.. run return 0