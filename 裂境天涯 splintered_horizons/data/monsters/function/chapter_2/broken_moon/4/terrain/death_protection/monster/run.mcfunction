execute if entity @s[tag=monsters.broken_moon,type=stray] run tp @s 1721 101 890
execute if entity @s[tag=monsters.broken_moon,type=stray] run return 0

execute on attacker run tag @s add monster.broken_moon.skill.4.death_protection

damage @s 9999 out_of_world by @p