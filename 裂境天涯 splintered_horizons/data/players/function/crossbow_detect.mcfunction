execute unless items entity @s weapon.mainhand crossbow run return 0
execute if items entity @s weapon.mainhand crossbow[minecraft:custom_data~{bow_detect:1} | minecraft:custom_data~{bow_detect:1b}] run return 0

item modify entity @s weapon.mainhand weapons:type/arrow/bow_setup