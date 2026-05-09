execute \
    unless items entity @s armor.chest *[custom_data~{id:"wtsf"}] run \
    return 0

execute \
    if score @s armor.wtsf.charge matches 4.. run \
    return run \
function armors:type/wtsf/use

scoreboard players set @s player.actionbar.armor.wtsf 20
scoreboard players add @s armor.wtsf.charge 1