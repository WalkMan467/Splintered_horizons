
execute on target run function wma:dummy/-menu
execute on attacker run function wma:dummy/-menu
data remove entity @s interaction
data remove entity @s attack

particle minecraft:crit ~ ~ ~ 0 1 0 1 0 force
playsound minecraft:block.barrel.open master @a ~ ~ ~ 1 2
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2