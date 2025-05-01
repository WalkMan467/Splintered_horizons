scoreboard players set @s[scores={environment_particles=2..}] environment_particles 0

execute if score @s environment_particles matches 1.. run advancement grant @s only world_area:main/environment_particles/true
execute unless score @s environment_particles matches 1.. run advancement grant @s only world_area:main/environment_particles/false

scoreboard players enable @s environment_particles