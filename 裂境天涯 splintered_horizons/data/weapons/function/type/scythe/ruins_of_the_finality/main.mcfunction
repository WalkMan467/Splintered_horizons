execute as @a at @s unless score @s player.animation.lock matches 1.. if score @s weapon.ruins_of_the_finality.effect.time matches 1 run function weapons:type/scythe/ruins_of_the_finality/rc/animation/1/use

execute as @a if score @s weapon.ruins_of_the_finality.effect.time matches 1.. run schedule function weapons:type/scythe/ruins_of_the_finality/main 1t