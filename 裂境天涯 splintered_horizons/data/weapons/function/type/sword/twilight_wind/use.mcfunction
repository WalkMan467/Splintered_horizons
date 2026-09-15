# ===================================================
# 劍 暮光之風 觸發 / sword twilight wind activate

    ## Guide [ function weapons:type/sword/twilight_wind/use ] >>> 劍 暮光之風 觸發 / sword twilight wind activate

# ===================================================

execute \
    unless score @s weapon.twilight_wind.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.twilight_wind.cd", cd:260}

execute \
    unless score #gametime global.main >= @s weapon.twilight_wind.cd run \
    return 0


# player
tag @s add twilight_wind.user

function weapons:rc/cd {id:"weapon.twilight_wind.cd", cd:100}
scoreboard players set @s weapon.twilight_wind.timer 0

tellraw @s [{"translate":"weapon.twilight_wind.skill","color":"dark_green","bold":true}," ",{"translate":"weapon.skill_activation","color":"green","bold":true}]

# particle

playsound minecraft:voice.wind_sword_skill_1 voice @a[distance=..8] ~ ~1 ~ 0.7 1 1
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 1.2f, to_color: [0.0f, 1.0f, 0.5f]} ~ ~0.75 ~ 1.5 1 1.5 0 50 normal @a

scoreboard players set @s weapon.effect.resplendence 100

scoreboard players add @s weapon.twilight_wind.gale_energy 5


execute \
    if score @s weapon.twilight_wind.gale_energy matches 26.. run \
scoreboard players set @s weapon.twilight_wind.gale_energy 1


execute \
    if score @s weapon.twilight_wind.gale_energy matches 0..1 run \
item modify entity @s weapon.mainhand weapons:type/sword/twilight_wind/1

execute \
    if score @s weapon.twilight_wind.gale_energy matches 6 run \
item modify entity @s weapon.mainhand weapons:type/sword/twilight_wind/2

execute \
    if score @s weapon.twilight_wind.gale_energy matches 11 run \
item modify entity @s weapon.mainhand weapons:type/sword/twilight_wind/3

execute \
    if score @s weapon.twilight_wind.gale_energy matches 16 run \
item modify entity @s weapon.mainhand weapons:type/sword/twilight_wind/4

execute \
    if score @s weapon.twilight_wind.gale_energy matches 21 run \
item modify entity @s weapon.mainhand weapons:type/sword/twilight_wind/5