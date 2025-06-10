# 擋掉不必要的偵測目標
execute unless entity @s[type=item] run return 0

# 偵測是否是風力劍 ;設定初始成功機率為 35%
execute if entity @s[type=item,tag=!paste_item,nbt={Item:{components:{"minecraft:custom_data":{rarity:"rare"}}}}] run scoreboard players set %base system.forging_table.probability 35

execute if entity @s[type=item,tag=!paste_item,nbt={Item:{components:{"minecraft:custom_data":{item:"beginner_upgrade_stone"}}}}] run scoreboard players add %success_rate system.forging_table.probability 10

# Tag 標記物品
tag @s add paste_item
data merge entity @s {NoGravity:1b,PickupDelay:60}
tp @s 770 148 979

# 偵測是否是武器?
execute if function system:forging_table/detect/is_weapon run tag @s add weapon

# 音效
stopsound @a voice minecraft:entity.ender_eye.death
stopsound @a voice minecraft:entity.firework_rocket.twinkle
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~1 ~ 1 1
particle totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 normal @a

# 啟動 Loop 偵測
function system:forging_table/fusion_loop