# 執行者 : typhoon

# speed
tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ #penetrate run tp @s ~ ~1 ~

# dmg
execute as @a[distance=..2.5] at @s run function unstable_rift:chapter_1/1/stormpromax/1/3c
# 舊版是寫 atk 50 再丟給 time_traveler:dmg_formula/monsters/calculate 換算，
# 那個命名空間在這一版已經整個不存在，現在的怪物都是直接給點數，
# 寫法對齊 monsters:chapter_3/sunfire_emissary/1/damage/use

execute \
    as @a[tag=dmger] \
    unless score @s sys.dummy_mob matches 1.. run \
damage @s 7 mob_attack by @n[tag=stormpromax]

tag @a remove dmger

# particle
scoreboard players operation #temp global.main = @s unstable_rift.stormpromax.duration
# 2 這個假玩家沒有人設定過，直接取餘數會失敗；就地設好再用
scoreboard players set #2 global.main 2
scoreboard players operation #temp global.main %= #2 global.main

execute if score #temp global.main matches 0 rotated ~ 0 run function unstable_rift:chapter_1/1/stormpromax/1/3b
execute if score #temp global.main matches 1 rotated ~45 0 run function unstable_rift:chapter_1/1/stormpromax/1/3b
