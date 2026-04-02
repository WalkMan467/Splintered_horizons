scoreboard players add @s weapon.thunder_duet.cd 0

execute \
    unless score @s weapon.thunder_duet.cd matches ..0 \
    unless score @s player.click.interval matches 1.. run \
function weapons:skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

execute \
    unless score @s weapon.thunder_duet.cd matches ..0 run \
return 0

scoreboard players set @s player.click.interval 20
scoreboard players add #index weapon.thunder_duet.id 1
scoreboard players operation @s weapon.thunder_duet.id = #index weapon.thunder_duet.id
scoreboard players set @s weapon.thunder_duet.cd 300

execute \
    rotated ~ 0 run \
summon item_display ^0.5 ^1 ^1 {Tags:["weapon.thunder_duet.tunder","summon"],interpolation_duration:1,teleport_duration:1,item:{id:"apple",count:1,components:{"item_model": "air"}}}

execute \
    rotated ~ 0 run \
summon item_display ^ ^1 ^1 {Tags:["weapon.thunder_duet.tunder","summon"],interpolation_duration:1,teleport_duration:1,item:{id:"apple",count:1,components:{"item_model": "air"}}}

execute \
    rotated ~ 0 run \
summon item_display ^-0.5 ^1 ^1 {Tags:["weapon.thunder_duet.tunder","summon"],interpolation_duration:1,teleport_duration:1,item:{id:"apple",count:1,components:{"item_model": "air"}}}

execute \
    as @e[sort=arbitrary,distance=..3,tag=weapon.thunder_duet.tunder,tag=summon,type=item_display] at @s run \
function weapons:type/axe/thunder_duet/rc/setup

scoreboard players set @s weapon.thunder_duet.target.delay 5