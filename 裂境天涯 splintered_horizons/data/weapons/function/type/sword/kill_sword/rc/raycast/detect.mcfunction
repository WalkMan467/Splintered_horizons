scoreboard players remove #weapon.kill_sword.raycast main.raycast 1

particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 1 normal @a[distance=2..]

# 擊中敵人
execute if score #weapon.kill_sword.raycast main.raycast matches 2.. positioned ^ ^ ^0.5 if entity @n[distance=..1.5,type=!#minecraft:dummy_mob,type=!player] as @n[distance=..1.5,type=!#minecraft:dummy_mob,type=!player] at @s run function weapons:type/sword/kill_sword/rc/raycast/final
execute if score #weapon.kill_sword.raycast main.raycast matches 2.. positioned ^ ^ ^0.5 if entity @n[distance=..1.5,type=!#minecraft:dummy_mob,type=!player] run return 0

# 擊中方塊
execute if score #weapon.kill_sword.raycast main.raycast matches 2.. positioned ^ ^ ^0.5 if block ~ ~ ~ #air run function weapons:type/sword/kill_sword/rc/raycast/detect
execute if score #weapon.kill_sword.raycast main.raycast matches 2.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #air run function weapons:type/sword/kill_sword/rc/raycast/final
execute if score #weapon.kill_sword.raycast main.raycast matches 2.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #air run return 0

# 到達最大距離
execute if score #weapon.kill_sword.raycast main.raycast matches 1 positioned ^ ^ ^0.5 run function weapons:type/sword/kill_sword/rc/raycast/final