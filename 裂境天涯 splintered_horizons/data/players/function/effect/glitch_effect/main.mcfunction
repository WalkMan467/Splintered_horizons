
execute \
    unless score @s player.effect.glitch_effect matches -2147483648..2147483647 run \
return 0

scoreboard players add @s player.effect.glitch_effect 1

title @s subtitle ""
title @s times 0 5 0


execute \
    if score @s player.effect.glitch_effect matches ..10 \
    store result score #rdm global.main run \
random value 1..5

execute \
    if score @s player.effect.glitch_effect matches ..10 \
    if score #rdm.temp global.main = #rdm global.main \
    store result score #rdm global.main run \
random value 1..5


execute \
    if score @s player.effect.glitch_effect matches ..10 \
    if score #rdm global.main matches 1 run \
title @s title {"text": "\uE012","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches ..10 \
    if score #rdm global.main matches 2 run \
title @s title {"text": "\uE013","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches ..10 \
    if score #rdm global.main matches 3 run \
title @s title {"text": "\uE015","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches ..10 \
    if score #rdm global.main matches 4 run \
title @s title {"text": "\uE016","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches ..10 \
    if score #rdm global.main matches 5 run \
title @s title {"text": "\uE017","shadow_color":0,"color": "white", "font": "minecraft:screen"}


execute \
    if score @s player.effect.glitch_effect matches 10 run \
title @s title {"text": ""}


execute \
    if score @s player.effect.glitch_effect matches 20..30 \
    store result score #rdm global.main run \
random value 1..6

execute \
    if score @s player.effect.glitch_effect matches 20..30 \
    if score #rdm.temp global.main = #rdm global.main \
    store result score #rdm global.main run \
random value 1..6


execute \
    if score @s player.effect.glitch_effect matches 20..30 \
    if score #rdm global.main matches 1 run \
title @s title {"text": "\uE012","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 20..30 \
    if score #rdm global.main matches 2 run \
title @s title {"text": "\uE013","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 20..30 \
    if score #rdm global.main matches 3 run \
title @s title {"text": "\uE015","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 20..30 \
    if score #rdm global.main matches 4 run \
title @s title {"text": "\uE016","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 20..30 \
    if score #rdm global.main matches 5 run \
title @s title {"text": "\uE017","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 20..30 \
    if score #rdm global.main matches 6 run \
title @s title {"text": "\uE018","shadow_color":0,"color": "white", "font": "minecraft:screen"}


execute \
    if score @s player.effect.glitch_effect matches 30 run \
title @s title {"text": ""}


execute \
    if score @s player.effect.glitch_effect matches 35..50 \
    store result score #rdm global.main run \
random value 1..6

execute \
    if score @s player.effect.glitch_effect matches 35..50 \
    if score #rdm.temp global.main = #rdm global.main \
    store result score #rdm global.main run \
random value 1..6


execute \
    if score @s player.effect.glitch_effect matches 35..50 \
    if score #rdm global.main matches 1 run \
title @s title {"text": "\uE014","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 35..50 \
    if score #rdm global.main matches 2 run \
title @s title {"text": "\uE017","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 35..50 \
    if score #rdm global.main matches 3 run \
title @s title {"text": "\uE018","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 35..50 \
    if score #rdm global.main matches 4 run \
title @s title {"text": "\uE019","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 35..50 \
    if score #rdm global.main matches 5 run \
title @s title {"text": "\uE020","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 35..50 \
    if score #rdm global.main matches 6 run \
title @s title {"text": "\uE021","shadow_color":0,"color": "white", "font": "minecraft:screen"}


execute \
    if score @s player.effect.glitch_effect matches 50 run \
title @s title {"text": ""}


execute \
    if score @s player.effect.glitch_effect matches 55..70 \
    store result score #rdm global.main run \
random value 1..5

execute \
    if score @s player.effect.glitch_effect matches 55..70 \
    if score #rdm.temp global.main = #rdm global.main \
    store result score #rdm global.main run \
random value 1..5


execute \
    if score @s player.effect.glitch_effect matches 55..70 \
    if score #rdm global.main matches 1 run \
title @s title {"text": "\uE019","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 55..70 \
    if score #rdm global.main matches 2 run \
title @s title {"text": "\uE022","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 55..70 \
    if score #rdm global.main matches 3 run \
title @s title {"text": "\uE023","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 55..70 \
    if score #rdm global.main matches 4 run \
title @s title {"text": "\uE024","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 55..70 \
    if score #rdm global.main matches 5 run \
title @s title {"text": "\uE025","shadow_color":0,"color": "white", "font": "minecraft:screen"}


execute \
    if score @s player.effect.glitch_effect matches 70 run \
title @s title {"text": "\uE026","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 71 run \
title @s title {"text": "\uE027","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 72 run \
title @s title {"text": "\uE028","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 73 run \
title @s title {"text": "\uE029","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 74 run \
title @s title {"text": "\uE030","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 75..100 run \
title @s title {"text": "\uE031","shadow_color":0,"color": "white", "font": "minecraft:screen"}


execute \
    if score @s player.effect.glitch_effect matches 101 run \
playsound minecraft:voice.kill_sword_shoot_end voice @s ~ ~1 ~ 0.375 1

execute \
    if score @s player.effect.glitch_effect matches 101 run \
title @s title {"text": "\uE030","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 102 run \
title @s title {"text": "\uE029","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 103 run \
title @s title {"text": "\uE028","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 104 run \
title @s title {"text": "\uE027","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 105 run \
title @s title {"text": "\uE026","shadow_color":0,"color": "white", "font": "minecraft:screen"}


execute \
    if score @s player.effect.glitch_effect matches 106..110 \
    store result score #rdm global.main run \
random value 1..5

execute \
    if score @s player.effect.glitch_effect matches 106..110 \
    if score #rdm.temp global.main = #rdm global.main \
    store result score #rdm global.main run \
random value 1..5


execute \
    if score @s player.effect.glitch_effect matches 106..110 \
    if score #rdm global.main matches 1 run \
title @s title {"text": "\uE019","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 106..110 \
    if score #rdm global.main matches 2 run \
title @s title {"text": "\uE022","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 106..110 \
    if score #rdm global.main matches 3 run \
title @s title {"text": "\uE023","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 106..110 \
    if score #rdm global.main matches 4 run \
title @s title {"text": "\uE024","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 106..110 \
    if score #rdm global.main matches 5 run \
title @s title {"text": "\uE025","shadow_color":0,"color": "white", "font": "minecraft:screen"}


execute \
    if score @s player.effect.glitch_effect matches 110..115 \
    store result score #rdm global.main run \
random value 1..6

execute \
    if score @s player.effect.glitch_effect matches 110..115 \
    if score #rdm.temp global.main = #rdm global.main \
    store result score #rdm global.main run \
random value 1..6


execute \
    if score @s player.effect.glitch_effect matches 110..115 \
    if score #rdm global.main matches 1 run \
title @s title {"text": "\uE014","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 110..115 \
    if score #rdm global.main matches 2 run \
title @s title {"text": "\uE017","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 110..115 \
    if score #rdm global.main matches 3 run \
title @s title {"text": "\uE018","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 110..115 \
    if score #rdm global.main matches 4 run \
title @s title {"text": "\uE019","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 110..115 \
    if score #rdm global.main matches 5 run \
title @s title {"text": "\uE020","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 110..115 \
    if score #rdm global.main matches 6 run \
title @s title {"text": "\uE021","shadow_color":0,"color": "white", "font": "minecraft:screen"}


execute \
    if score @s player.effect.glitch_effect matches 115..120 \
    store result score #rdm global.main run \
random value 1..6

execute \
    if score @s player.effect.glitch_effect matches 115..120 \
    if score #rdm.temp global.main = #rdm global.main \
    store result score #rdm global.main run \
random value 1..6


execute \
    if score @s player.effect.glitch_effect matches 115..120 \
    if score #rdm global.main matches 1 run \
title @s title {"text": "\uE012","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 115..120 \
    if score #rdm global.main matches 2 run \
title @s title {"text": "\uE013","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 115..120 \
    if score #rdm global.main matches 3 run \
title @s title {"text": "\uE015","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 115..120 \
    if score #rdm global.main matches 4 run \
title @s title {"text": "\uE016","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 115..120 \
    if score #rdm global.main matches 5 run \
title @s title {"text": "\uE017","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 115..120 \
    if score #rdm global.main matches 6 run \
title @s title {"text": "\uE018","shadow_color":0,"color": "white", "font": "minecraft:screen"}


execute \
    if score @s player.effect.glitch_effect matches 120..125 \
    store result score #rdm global.main run \
random value 1..5

execute \
    if score @s player.effect.glitch_effect matches 120..125 \
    if score #rdm.temp global.main = #rdm global.main \
    store result score #rdm global.main run \
random value 1..5


execute \
    if score @s player.effect.glitch_effect matches 120..125 \
    if score #rdm global.main matches 1 run \
title @s title {"text": "\uE012","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 120..125 \
    if score #rdm global.main matches 2 run \
title @s title {"text": "\uE013","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 120..125 \
    if score #rdm global.main matches 3 run \
title @s title {"text": "\uE015","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 120..125 \
    if score #rdm global.main matches 4 run \
title @s title {"text": "\uE016","shadow_color":0,"color": "white", "font": "minecraft:screen"}

execute \
    if score @s player.effect.glitch_effect matches 120..125 \
    if score #rdm global.main matches 5 run \
title @s title {"text": "\uE017","shadow_color":0,"color": "white", "font": "minecraft:screen"}


execute \
    if score @s player.effect.glitch_effect matches 125 run \
title @s title {"text": ""}

scoreboard players operation #rdm.temp global.main = #rdm global.main


execute \
    if score @s player.effect.glitch_effect matches 125.. run \
scoreboard players reset @s player.effect.glitch_effect