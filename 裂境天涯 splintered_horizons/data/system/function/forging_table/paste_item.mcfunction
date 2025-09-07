# Block unnecessary detection targets
execute unless entity @s[type=item] run return 0

#Detect whether it is a wind sword; set the initial success rate to 35%
execute if entity @s[type=item,tag=!paste_item,nbt={Item:{components:{"minecraft:custom_data":{rarity:"rare"}}}}] run scoreboard players set %base system.forging_table.probability 35
execute if entity @s[type=item,tag=!paste_item,nbt={Item:{components:{"minecraft:custom_data":{rarity:"rare"}}}}] run scoreboard players set %final system.forging_table.probability 35

execute if entity @s[type=item,tag=!paste_item,nbt={Item:{components:{"minecraft:custom_data":{item:"beginner_upgrade_stone"}}}}] run function system:forging_table/upgrade_stone/beginner

# Tag Item
tag @s add paste_item
data merge entity @s {NoGravity:1b,PickupDelay:60}
tp @s 770 148 979

# Detect if it is a weapon?
execute if function system:forging_table/detect/is_weapon run tag @s add weapon

# Sound Effects
stopsound @a voice minecraft:entity.ender_eye.death
stopsound @a voice minecraft:entity.firework_rocket.twinkle
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~1 ~ 1 1
particle totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 normal @a

summon minecraft:text_display 770 147.5 979.0 {Rotation:[180.0f,0.0f],billboard:"fixed",UUID:[I; 211, 2, 221, 212],text:[{"translate":"system.forging_table.probability","color":"light_purple","bold":true,"fallback":"當前機率"},{"color":"light_purple","text":": "},{"score":{name:"%final",objective:"system.forging_table.probability"},"color":"light_purple","bold":true},{"color":"light_purple","bold":true,"text":"%"}],background:0}

# Enable Loop Detection
function system:forging_table/fusion_loop