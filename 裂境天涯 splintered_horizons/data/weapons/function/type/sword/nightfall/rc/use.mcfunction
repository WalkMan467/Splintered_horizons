scoreboard players add @s weapon.nightfall.state 0
scoreboard players add @s weapon.nightfall.cd 0
execute unless score @s weapon.nightfall.cd matches ..0 unless score @s player.click.interval matches 1.. run function weapons:skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"
execute unless score @s weapon.nightfall.cd matches ..0 run return 0

scoreboard players set @s player.click.interval 20

scoreboard players set @s weapon.effect.shadow 100

execute if score @s weapon.nightfall.state matches 0 if score @s weapon.nightfall.cd matches 0 run function weapons:type/sword/nightfall/rc/state/1
execute if score @s weapon.nightfall.state matches 1 if score @s weapon.nightfall.cd matches 0 run function weapons:type/sword/nightfall/rc/state/0

# 緋紅之爪彈射傷害

execute unless score @s weapon.effect.crimson_claw matches 1.. run return 0

tag @s add nightfall.user
scoreboard players set @s weapon.nightfall.effect.switch_dmg_count 5