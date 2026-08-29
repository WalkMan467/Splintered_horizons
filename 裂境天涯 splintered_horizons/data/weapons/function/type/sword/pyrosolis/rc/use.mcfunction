# ===================================================
# 劍 地獄之火 右鍵 觸發 / sword pyrosolis right click activate

    ## Guide [ function weapons:type/sword/pyrosolis/rc/use ] >>> 劍 地獄之火 右鍵 觸發 / sword pyrosolis right click activate

# ===================================================

# 執行者 : 玩家

execute \
    if score @s player.click.interval matches 1.. run \
return 0

scoreboard players set @s player.click.interval 20

execute \
    unless score @s weapon.pyrosolis.cd matches -2147483648..2147483647 run \
function weapons:type/sword/pyrosolis/rc/cd

execute \
    unless score #gametime global.main >= @s weapon.pyrosolis.cd run \
    return run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

# Reset CD

function weapons:type/sword/pyrosolis/rc/cd

title @s title {"text":"\uE004","font":"minecraft:screen"}

title @s times 10 0 10


# FX / SFX

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.000,0.000,0.000],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 1 10 force @a