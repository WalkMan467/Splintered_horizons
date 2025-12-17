execute \
    if score @s player.click.interval matches 1.. run \
    return 0

execute \
    if score @s weapon.rock_crushing_greatsword.hold_down matches 1 run \
playsound minecraft:item.armor.equip_netherite voice @a ~ ~1 ~ 1 0.875

execute \
    if score @s weapon.rock_crushing_greatsword.hold_down matches 1 \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"rock_crushing_greatsword"}] \
    if predicate weapons:type/sword/rock_crushing_greatsword/animation/none
item modify entity @s weapon.mainhand weapons:type/sword/rock_crushing_greatsword/dmg_immunity/true

execute \
    if score @s weapon.rock_crushing_greatsword.hold_down matches 9..14 \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"rock_crushing_greatsword"}] run \
item modify entity @s weapon.mainhand weapons:type/sword/rock_crushing_greatsword/dmg_immunity/false

execute \
    if score @s weapon.rock_crushing_greatsword.hold_down matches 15 \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"rock_crushing_greatsword"}] run \
item modify entity @s weapon.mainhand weapons:type/sword/rock_crushing_greatsword/defense/false

execute \
    if score @s weapon.rock_crushing_greatsword.hold_down matches 15 \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"rock_crushing_greatsword"}] run \
item modify entity @s weapon.mainhand weapons:type/sword/rock_crushing_greatsword/dmg_immunity/false

scoreboard players set @s weapon.rock_crushing_greatsword.use 1

tag @s add rock_crushing_greatsword.user

execute \
    unless score @s weapon.rock_crushing_greatsword.hold_down matches 15.. run \
scoreboard players add @s weapon.rock_crushing_greatsword.hold_down 1