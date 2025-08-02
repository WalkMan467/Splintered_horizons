
# player

scoreboard players set @s weapon.effect.shadow 200

tag @s add weapon.nightfall.charger
effect give @s speed 1 2 true
scoreboard players reset @s weapon.nightfall.charge_timer

# particle
playsound block.beacon.activate master @a ~ ~ ~ 1 2