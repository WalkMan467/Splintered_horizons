# ===================================================
# 天導神弓 右鍵 觸發 / heavenly guiding bow right click activate

    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/use ] >>> 天導神弓 右鍵 觸發 / heavenly guiding bow right click activate
    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/0 ] >>> 天導神弓 右鍵 階段 0 / heavenly guiding bow right click step 0
    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/charging_complete ] >>> 天導神弓 右鍵 charging complete / heavenly guiding bow right click charging complete

# ===================================================

scoreboard players add @s weapon.heavenly_guiding_bow.cd 0

execute \
    if score @s weapon.heavenly_guiding_bow.cd matches 1.. run \
return 0


execute \
    if score @s weapon.heavenly_guiding_bow.hold_down matches 1 \
    if items entity @s weapon.mainhand bow[custom_data~{weapon:"heavenly_guiding_bow"}] run \
item modify entity @s weapon.mainhand weapons:type/bow/heavenly_guiding_bow/0

execute \
    if score @s weapon.heavenly_guiding_bow.hold_down matches 1 \
    if items entity @s weapon.offhand bow[custom_data~{weapon:"heavenly_guiding_bow"}] run \
item modify entity @s weapon.offhand weapons:type/bow/heavenly_guiding_bow/0


execute \
    if score @s weapon.heavenly_guiding_bow.hold_down matches 1 run \
function weapons:type/bow/heavenly_guiding_bow/rc/0

execute \
    if score @s weapon.heavenly_guiding_bow.hold_down matches 10 \
    if items entity @s weapon.mainhand bow[custom_data~{weapon:"heavenly_guiding_bow"}] run \
item modify entity @s weapon.mainhand weapons:type/bow/heavenly_guiding_bow/1

execute \
    if score @s weapon.heavenly_guiding_bow.hold_down matches 10 \
    if items entity @s weapon.offhand bow[custom_data~{weapon:"heavenly_guiding_bow"}] run \
item modify entity @s weapon.offhand weapons:type/bow/heavenly_guiding_bow/1

execute \
    if score @s weapon.heavenly_guiding_bow.hold_down matches 10 \
    if items entity @s weapon.mainhand bow[custom_data~{weapon:"heavenly_guiding_bow"}] run \
function weapons:type/bow/heavenly_guiding_bow/rc/charging_complete

execute \
    if score @s weapon.heavenly_guiding_bow.hold_down matches 10 \
    if items entity @s weapon.offhand bow[custom_data~{weapon:"heavenly_guiding_bow"}] run \
function weapons:type/bow/heavenly_guiding_bow/rc/charging_complete

scoreboard players set @s weapon.heavenly_guiding_bow.use 1
tag @s add heavenly_guiding_bow.user

execute \
    unless score @s weapon.heavenly_guiding_bow.hold_down matches 11.. run \
scoreboard players add @s weapon.heavenly_guiding_bow.hold_down 1