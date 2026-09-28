
# Bossbar
execute store result bossbar stormpromax max run attribute @e[tag=stormpromax,limit=1] generic.max_health get
execute store result bossbar stormpromax value run data get entity @e[tag=stormpromax,limit=1] Health
bossbar set stormpromax visible true

# Skill 1
execute as @e[type=zombie,tag=stormpm.1] at @s run function monsters:stormpromax/1/main
execute as @e[type=marker,tag=stormpm.1.2] at @s run function monsters:stormpromax/1/main.2

# Skill 2
execute as @e[type=item,tag=stormpm.2] at @s run function monsters:stormpromax/2/main
execute as @e[type=slime,tag=stormpm.2.2] at @s run function monsters:stormpromax/2/main.2

# Skill 3
execute as @e[type=zombie,tag=stormpm.3.flytosky] at @s run function monsters:stormpromax/3/main.flytosky
execute as @a[tag=stormpm.3.flytosky] at @s run function monsters:stormpromax/3/main.flytosky
execute as @e[type=zombie,tag=stormpm.3] at @s run function monsters:stormpromax/3/main
execute as @e[type=slime,tag=,nbt={NoAI:1b}] at @s run function weapons:void
execute as @e[type=marker,tag=stormpm.3.5] at @s run function monsters:stormpromax/3/main.5

# Boss Self
execute as @e[type=zombie,tag=stormpromax,limit=1] at @s run function monsters:stormpromax/main.boss