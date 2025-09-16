
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
title @a[distance=..7] actionbar [{"text": "<訓練人偶> 今天的主人也辛苦了uwu 感謝我能為您服務"}]

playsound minecraft:entity.allay.death master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0
execute as @e[tag=wma,tag=wma.dummy] at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^ 0 0 0 0 0 force
execute as @e[tag=wma,tag=wma.dummy] at @s anchored eyes run particle minecraft:poof ~ ~ ~ 0 0 0 0.1 10 force

execute as @e[tag=wma,tag=wma.dummy] run function wma:void
kill @e[type=text_display,tag=wma,tag=wma.dummy.menu]