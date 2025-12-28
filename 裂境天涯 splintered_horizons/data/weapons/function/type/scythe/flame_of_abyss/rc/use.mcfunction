scoreboard players add @s weapon.flame_of_abyss.cd 0

execute \
    unless score @s weapon.flame_of_abyss.cd matches ..0 \
    unless score @s player.click.interval matches 1.. run \
function weapons:skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

execute \
    unless score @s weapon.flame_of_abyss.cd matches ..0 run \
return 0


scoreboard players set @s player.click.interval 20
scoreboard players set @s weapon.flame_of_abyss.cd 10