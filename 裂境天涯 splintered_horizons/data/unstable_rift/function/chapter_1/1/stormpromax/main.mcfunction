
# Timer
#
# 舊包是在 global:tick 對所有 tag=Duration 的實體 +1，這包沒有那套，
# 而且共用的 duration 是倒數制，借用會被提前殺掉所以自己在這裡加

scoreboard players add @e[tag=stormpm.timer] unstable_rift.stormpromax.duration 1

# Bossbar
execute store result bossbar stormpromax max run attribute @e[tag=stormpromax,limit=1] max_health get
execute store result bossbar stormpromax value run data get entity @e[tag=stormpromax,limit=1] Health
bossbar set stormpromax visible true

# Skill 1
execute as @e[type=zombie,tag=stormpm.1] at @s run function unstable_rift:chapter_1/1/stormpromax/1/main
execute as @e[type=marker,tag=stormpm.1.2] at @s run function unstable_rift:chapter_1/1/stormpromax/1/main.2

# Skill 2
execute as @e[type=item,tag=stormpm.2] at @s run function unstable_rift:chapter_1/1/stormpromax/2/main
execute as @e[type=slime,tag=stormpm.2.2] at @s run function unstable_rift:chapter_1/1/stormpromax/2/main.2

# Skill 3
execute as @e[type=zombie,tag=stormpm.3.flytosky] at @s run function unstable_rift:chapter_1/1/stormpromax/3/main.flytosky
execute as @a[tag=stormpm.3.flytosky] at @s run function unstable_rift:chapter_1/1/stormpromax/3/main.flytosky
execute as @e[type=zombie,tag=stormpm.3] at @s run function unstable_rift:chapter_1/1/stormpromax/3/main
execute as @e[type=slime,tag=,nbt={NoAI:1b}] at @s run function monsters:void
execute as @e[type=marker,tag=stormpm.3.5] at @s run function unstable_rift:chapter_1/1/stormpromax/3/main.5

# Boss Self
execute as @e[type=zombie,tag=stormpromax,limit=1] at @s run function unstable_rift:chapter_1/1/stormpromax/main.boss
