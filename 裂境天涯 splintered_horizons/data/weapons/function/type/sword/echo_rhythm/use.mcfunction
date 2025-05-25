scoreboard players add @s weapon.echo_rhythm.cd 0
execute if score @s weapon.echo_rhythm.cd matches 1.. run return 0
function particle:sound_wave/use

scoreboard players set @s weapon.echo_rhythm.cd 3

execute unless score @s weapon.effect.shadow matches 1.. run function weapons:type/sword/echo_rhythm/damage/normal

execute if score @s weapon.effect.shadow matches 1.. run function weapons:type/sword/echo_rhythm/damage/stronger