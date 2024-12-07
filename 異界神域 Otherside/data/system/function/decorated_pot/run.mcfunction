setblock ~ ~ ~ air
setblock ~ ~ ~ decorated_pot[cracked=true]{sherds:["minecraft:prize_pottery_sherd","minecraft:prize_pottery_sherd","minecraft:prize_pottery_sherd","minecraft:prize_pottery_sherd"],LootTable:"weapons:decorated_pot/drop_weapons"} replace

scoreboard players reset @s system.decorated_pot.reset

tag @s remove decorated_pot.marker.spawn