scoreboard players add @s weapon.grip_of_withering.cd 0

execute \
    unless score @s weapon.grip_of_withering.cd matches ..0 \
    unless score @s player.click.interval matches 1.. run \
function weapons:skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

execute \
    if score @s weapon.grip_of_withering.cd matches 1.. run \
return 0

tag @e[distance=..6,type=!#minecraft:dummy_mob,type=!player] add dmger
effect give @e[distance=..6,tag=dmger,type=!#minecraft:dummy_mob,type=!player] wither 8 1 false

tag @s[tag=!atker] add atker
scoreboard players set @s[tag=atker] atk 150
function dmg_formula:weapons/type/sword/grip_of_withering/calculate

scoreboard players set @s weapon.grip_of_withering.cd 240
scoreboard players set @s weapon.effect.crimson_claw 160

playsound minecraft:entity.wither.shoot voice @a ~ ~1 ~ 1 0.75
particle minecraft:trial_omen ~ ~1 ~ 0 0 0 1 20 force @a

scoreboard players reset #weapon.grip_of_withering.fx particle
function weapons:type/sword/grip_of_withering/rc/fx

tellraw @s [{"translate":"weapon.grip_of_withering.skill","color":"dark_green","bold":true}," ",{"translate":"weapon.skill_activation","color":"green","bold":true}]