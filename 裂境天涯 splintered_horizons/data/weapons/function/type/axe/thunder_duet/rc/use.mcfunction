scoreboard players add @s weapon.thunder_duet.cd 0

execute \
    unless score @s weapon.thunder_duet.cd matches ..0 \
    unless score @s player.click.interval matches 1.. run \
function weapons:skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

execute \
    unless score @s weapon.thunder_duet.cd matches ..0 run \
return 0

scoreboard players reset @s weapon.thunder_duet.passive.state
scoreboard players set @s player.click.interval 20
scoreboard players add #index weapon.thunder_duet.id 1
scoreboard players operation @s weapon.thunder_duet.id = #index weapon.thunder_duet.id
scoreboard players set @s weapon.thunder_duet.cd 300

execute \
    rotated ~ 0 run \
summon item_display ^0.5 ^1 ^1 {Tags:["weapon.thunder_duet.tunder","summon"],interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/tunder_gray"}, count: 1, id: "minecraft:apple"}, teleport_duration: 1, transformation: {left_rotation: [0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.7500001f, 2.4999998f, 0.75f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    rotated ~ 0 run \
summon item_display ^ ^1 ^1 {Tags:["weapon.thunder_duet.tunder","summon"],interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/tunder_gray"}, count: 1, id: "minecraft:apple"}, teleport_duration: 1, transformation: {left_rotation: [0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.7500001f, 2.4999998f, 0.75f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    rotated ~ 0 run \
summon item_display ^-0.5 ^1 ^1 {Tags:["weapon.thunder_duet.tunder","summon"],interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/tunder_gray"}, count: 1, id: "minecraft:apple"}, teleport_duration: 1, transformation: {left_rotation: [0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.7500001f, 2.4999998f, 0.75f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    as @e[sort=arbitrary,distance=..3,tag=weapon.thunder_duet.tunder,tag=summon,type=item_display] at @s run \
function weapons:type/axe/thunder_duet/rc/setup

scoreboard players set @s weapon.thunder_duet.target.delay 5