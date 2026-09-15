# ===================================================
# 風力劍 觸發 / wind sword activate

    ## Guide [ function weapons:type/sword/wind_sword/use ] >>> 風力劍 觸發 / wind sword activate

# ===================================================

execute \
    unless score @s weapon.wind_sword.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.wind_sword.cd", cd:260}

execute \
    unless score #gametime global.main >= @s weapon.wind_sword.cd run \
    return 0


# player
tag @s add wind_sword.user

# 重置 CD / Reset CD
function weapons:rc/cd {id:"weapon.wind_sword.cd", cd:260}
scoreboard players set @s weapon.wind_sword.timer 0

# particle

playsound minecraft:voice.wind_sword_skill_1 voice @a[distance=..8] ~ ~1 ~ 0.7 1 1
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 1.2f, to_color: [0.0f, 1.0f, 0.5f]} ~ ~0.75 ~ 1.5 1 1.5 0 50 normal @a

scoreboard players set @s weapon.effect.resplendence 100