## dummy
execute as @e[tag=sys.dmg_show.dummy,distance=..30] at @s run function wma:dummy/main

## show dmg

execute as @e[type=!#minecraft:dummy_mob,distance=..30] at @s run function sys:dmg_show/main

## dmg show text
execute as @e[type=text_display,tag=sys.dmg_show.dummy.show,distance=..30] at @s run function sys:dmg_show/main.text