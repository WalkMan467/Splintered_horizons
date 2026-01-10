execute if score @s player.click.interval matches 1.. run return 0

scoreboard players set @s player.click.interval 5


scoreboard players reset weapon.flame_of_finality.blade particle
execute rotated ~-45 -15 anchored eyes run function weapons:type/scythe/flame_of_finality/lc/blade_particle
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.75