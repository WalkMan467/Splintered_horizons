function #weapons:toggle_detection

execute if items entity @s weapon.mainhand #weapon run playsound minecraft:hotbar.switch_sword voice @a ~ ~1 ~ 0.75 1
execute if items entity @s weapon.mainhand #tool run playsound minecraft:hotbar.switch_tool voice @a ~ ~1 ~ 0.75 1
execute if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand #minecraft:tool unless items entity @s weapon.mainhand #minecraft:swords run playsound minecraft:hotbar.switch_item voice @a ~ ~1 ~ 1 1