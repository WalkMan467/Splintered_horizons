scoreboard players add @s weapon.nightfall.charge_timer 1

# particle
scoreboard players set #temp global.main 0
execute rotated ~ 0 positioned ~ ~1 ~ run function weapons:type/sword/nightfall/passive/range_particle

# release
execute if score @s weapon.nightfall.charge_timer matches 10.. run scoreboard players set @s player.actionbar.weapon.nightfall 20

execute if score @s weapon.nightfall.charge_timer matches 20.. rotated ~ 0 run function weapons:type/sword/nightfall/passive/dmg/2