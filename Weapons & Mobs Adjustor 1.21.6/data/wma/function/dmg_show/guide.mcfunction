## dummy
execute as @e[tag=wma.dummy,distance=..30] at @s run function wma:dummy/main

## show dmg

execute as @e[type=!#minecraft:dummy_mob,distance=..30] at @s run function wma:dmg_show/main

## dmg show text
execute as @e[type=text_display,tag=wma.dummy.show,distance=..30] at @s run function wma:dmg_show/main.text
execute as @e[type=interaction,tag=wma.dummy.menu,limit=1,distance=..30] at @s if data entity @s interaction run function wma:dummy/sys/click_menu
execute as @e[type=interaction,tag=wma.dummy.menu,limit=1,distance=..30] at @s if data entity @s attack run function wma:dummy/sys/click_menu

## item
execute as @e[type=item,tag=wma.need_some_help,distance=..30] run data modify entity @s Age set value 100s