scoreboard players add @s player.ultimate 0
execute unless score @s player.ultimate matches ..0 run function weapons:ultimate_use_failed
execute unless score @s player.ultimate matches ..0 run return 0

scoreboard players set @s player.click.interval 20

scoreboard players add @s weapon.ruins_of_the_finality.enhanced_finality_skill 0
scoreboard players add @s weapon.ruins_of_the_finality.effect 0

execute if score @s weapon.ruins_of_the_finality.effect matches 5.. run scoreboard players set @s weapon.ruins_of_the_finality.enhanced_finality_skill 260
execute if score @s weapon.ruins_of_the_finality.effect matches 5.. run scoreboard players set @s weapon.ruins_of_the_finality.effect 0

execute unless score @s weapon.ruins_of_the_finality.enhanced_finality_skill matches 1.. run return 0

tellraw @s [{"translate":"weapon.ruins_of_the_finality.skill","color":"dark_green","bold":true}," ",{"translate":"weapon.skill_activation","color":"green","bold":true}]

scoreboard players set @s[scores={player.ultimate=..0}] player.ultimate 3

execute unless score @s weapon.ruins_of_the_finality.blade.state matches 2.. run scoreboard players add @s weapon.ruins_of_the_finality.blade.state 1

execute if score @s weapon.ruins_of_the_finality.blade.state matches 1 run tag @s add weapon.ruins_of_the_finality.blade.1.user
execute if score @s weapon.ruins_of_the_finality.blade.state matches 1 run scoreboard players set #temp weapon.ruins_of_the_finality.effect.range 25
execute if score @s weapon.ruins_of_the_finality.blade.state matches 1 run scoreboard players set @s player.animation.lock 10
execute if score @s weapon.ruins_of_the_finality.blade.state matches 1 run function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/use

execute if score @s weapon.ruins_of_the_finality.blade.state matches 2 run function weapons:type/scythe/ruins_of_the_finality/rc/animation/2/use
execute if score @s weapon.ruins_of_the_finality.blade.state matches 2 run scoreboard players set @s weapon.ruins_of_the_finality.blade.state 0