# player
execute on attacker unless score @s player.mana matches 20.. run return fail
execute on attacker run scoreboard players remove @s player.mana 20
execute on attacker run tag @s add weapon.ruins_of_the_end.used

# target

scoreboard players set @s effect.void 80
tp @s @n[tag=particle.space_crack.main,limit=1]
tag @s add weapon.ruins_of_the_end.target

effect give @s glowing 5 0 false

function particle:space_crack/use