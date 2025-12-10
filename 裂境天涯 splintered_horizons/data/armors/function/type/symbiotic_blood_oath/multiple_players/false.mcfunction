execute as @e[distance=..6,type=!#minecraft:dummy_mob,type=!player] at @s run function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:20, max:100}

$damage @s $(health) armors:type/symbiotic_blood_oath/damage