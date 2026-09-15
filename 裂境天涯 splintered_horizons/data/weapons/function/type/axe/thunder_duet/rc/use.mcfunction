# ===================================================
# 斧 雷霆二重奏 右鍵 觸發 / axe thunder duet right click activate

    ## Guide [ function weapons:type/axe/thunder_duet/rc/use ] >>> 斧 雷霆二重奏 右鍵 觸發 / axe thunder duet right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function weapons:type/axe/thunder_duet/rc/setup ] >>> 斧 雷霆二重奏 右鍵 初始化 / axe thunder duet right click setup

# ===================================================

# 連點保護 / Click interval

execute \
    if score @s player.click.interval matches 1.. run \
    return run \
return 0

# 第一次使用先建立 CD 分數 / Initialize the cd score on first use

execute \
    unless score @s weapon.thunder_duet.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.thunder_duet.cd", cd:300}

# CD 還沒到 / Still on cooldown

execute \
    unless score #gametime global.main >= @s weapon.thunder_duet.cd run \
    return run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

scoreboard players reset @s weapon.thunder_duet.passive.state
scoreboard players set @s player.click.interval 20
scoreboard players add #index weapon.thunder_duet.id 1
scoreboard players operation @s weapon.thunder_duet.id = #index weapon.thunder_duet.id
function weapons:rc/cd {id:"weapon.thunder_duet.cd", cd:300}

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