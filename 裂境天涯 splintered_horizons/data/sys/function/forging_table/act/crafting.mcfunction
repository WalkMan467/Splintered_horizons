tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]

tellraw @s [{"font":"minecraft:default","translate":"tips.sys.forging_table.crafting.title","fallback":"目前可以合成的配方:","color":"white"}]
tellraw @s [{"text":"\n"}]
tellraw @s [{"translate":"weapon.wind_sword","color":"dark_aqua","italic":false,"bold":true}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.dust_of_the_wind","color":"dark_green","italic":false,"font": "minecraft:default"},{"text": "*3","font": "minecraft:default"}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.stone_sword","color":"white","italic":false,"font": "minecraft:default"},{"text": "*1","font": "minecraft:default"}]

execute if score #sys.forging_table.nightfall sys.forging_table.recipes matches 1.. run tellraw @s [{"text":"\n"}]

execute if score #sys.forging_table.nightfall sys.forging_table.recipes matches 1.. run tellraw @s [{"translate":"weapon.nightfall","color":"#b30000","italic":false,"bold":true}]
execute if score #sys.forging_table.nightfall sys.forging_table.recipes matches 1.. run tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.moonlight_star","color":"dark_purple","italic":false,"font": "minecraft:default"},{"text": "*5","font": "minecraft:default"}]
execute if score #sys.forging_table.nightfall sys.forging_table.recipes matches 1.. run tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.stone_sword","color":"white","italic":false,"font": "minecraft:default"},{"text": "*1","font": "minecraft:default"}]

execute if score #sys.forging_table.twilight_wind sys.forging_table.recipes matches 1.. run tellraw @s [{"text":"\n"}]

execute if score #sys.forging_table.twilight_wind sys.forging_table.recipes matches 1.. run tellraw @s [{"translate":"weapon.twilight_wind","color":"dark_aqua","italic":false,"bold":true}]
execute if score #sys.forging_table.twilight_wind sys.forging_table.recipes matches 1.. run tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.dust_of_the_wind","color":"dark_green","italic":false,"font": "minecraft:default"},{"text": "*6","font": "minecraft:default"}]
execute if score #sys.forging_table.twilight_wind sys.forging_table.recipes matches 1.. run tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.stone_sword","color":"white","italic":false,"font": "minecraft:default"},{"text": "*1","font": "minecraft:default"}]

tellraw @s [{"text":"\n"}]

tellraw @s [{"translate":"weapon.morning_light","color":"#ffd000","italic":false,"bold":true}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.holy_light_iron_ingot","color":"#ffd000","italic":false,"font": "minecraft:default"},{"text": "*5","font": "minecraft:default"}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.stone_sword","color":"white","italic":false,"font": "minecraft:default"},{"text": "*1","font": "minecraft:default"}]

execute if score #sys.forging_table.rock_crushing_greatsword sys.forging_table.recipes matches 1.. run tellraw @a [{"text":"\n"}]

execute if score #sys.forging_table.rock_crushing_greatsword sys.forging_table.recipes matches 1.. run tellraw @a [{"translate":"weapon.rock_crushing_greatsword","color":"gold","italic":false,"bold":true}]
execute if score #sys.forging_table.rock_crushing_greatsword sys.forging_table.recipes matches 1.. run tellraw @a [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.rockbound_crystal","color":"#b19000","italic":false,"font": "minecraft:default"},{"text": "*6","font": "minecraft:default"}]
execute if score #sys.forging_table.rock_crushing_greatsword sys.forging_table.recipes matches 1.. run tellraw @a [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.stone_sword","color":"white","italic":false,"font": "minecraft:default"},{"text": "*1","font": "minecraft:default"}]

tellraw @s [{"text":"\n"}]

tellraw @s [{"translate":"armor.armor_of_the_coiled_rock","color":"#b37400","italic":false,"bold":true}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.rockbound_crystal","color":"#b19000","italic":false,"font": "minecraft:default"},{"text": "*3","font": "minecraft:default"}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.leather_chestplate","color":"white","italic":false,"font": "minecraft:default"},{"text": "*1","font": "minecraft:default"}]

data remove entity @s interaction