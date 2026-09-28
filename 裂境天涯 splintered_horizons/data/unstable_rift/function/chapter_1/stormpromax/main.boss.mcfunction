
# 施法
execute if score @s monster.skill.cast.cd matches ..0 run function monsters:stormpromax/cast/cast

# Move 3
scoreboard players set #2 global.main 2
scoreboard players set #3 global.main 3
execute store result score #hp global.main run data get entity @s Health
execute store result score #hpmax global.main run attribute @s generic.max_health get

# 2/3血
scoreboard players operation #hpmax global.main *= #2 global.main
scoreboard players operation #hpmax global.main /= #3 global.main
execute if score #hpmax global.main >= #hp global.main unless entity @s[tag=stormpm.3.already1] run function monsters:stormpromax/3/use

# 1/3血
scoreboard players operation #hpmax global.main /= #2 global.main
execute if score #hpmax global.main >= #hp global.main unless entity @s[tag=stormpm.3.already2] run function monsters:stormpromax/3/use

bossbar set stormpromax players @a[distance=..80]