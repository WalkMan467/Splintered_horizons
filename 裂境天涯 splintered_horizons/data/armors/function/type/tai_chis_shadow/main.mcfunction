execute if items entity @s armor.chest *[custom_data~{tai_chis_shadow:1b} | custom_data~{tai_chis_shadow:1}] run advancement grant @s only armors:type/tai_chis_shadow/eqipment
execute unless items entity @s armor.chest *[custom_data~{tai_chis_shadow:1b} | custom_data~{tai_chis_shadow:1}] run advancement grant @s only armors:type/tai_chis_shadow/take_off


execute if score @s armor.tai_chis_shadow.effect matches 1.. run function armors:type/tai_chis_shadow/effect/true
execute if score @s armor.tai_chis_shadow.effect matches 0 run function armors:type/tai_chis_shadow/effect/false