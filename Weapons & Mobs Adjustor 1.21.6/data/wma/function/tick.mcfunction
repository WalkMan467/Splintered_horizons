
## dummy
execute as @e[tag=wma.dummy] at @s run function wma:dummy/main

## show dmg
execute as @e[type=!#minecraft:dummy_mob] at @s run function wma:dmg_show/main

## dmg show text
execute as @e[type=text_display,tag=wma.dummy.show] at @s run function wma:dmg_show/main.text
execute as @e[type=interaction,tag=wma.dummy.menu,limit=1] at @s if data entity @s interaction run function wma:dummy/sys/click_menu
execute as @e[type=interaction,tag=wma.dummy.menu,limit=1] at @s if data entity @s attack run function wma:dummy/sys/click_menu

## item
execute as @e[type=item,tag=wma.need_some_help] run data modify entity @s Age set value 100s