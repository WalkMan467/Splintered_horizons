# ===================================================
# 鐮 變形異獸 偵測 / scythe morphing beast detect

    ## Guide [ function weapons:type/scythe/morphing_beast/detect ] >>> 鐮 變形異獸 偵測 / scythe morphing beast detect

# ===================================================

scoreboard players add @s weapon.morphing_beast.state 0


execute \
    if items entity @s weapon.mainhand *[custom_model_data={floats:[0]}] run \
scoreboard players set @s weapon.morphing_beast.state 0

execute \
    if items entity @s weapon.mainhand *[custom_model_data={floats:[1]}] run \
scoreboard players set @s weapon.morphing_beast.state 1

execute \
    if items entity @s weapon.mainhand *[custom_model_data={floats:[2]}] run \
scoreboard players set @s weapon.morphing_beast.state 2