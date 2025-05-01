# 造成傷害

execute as @a[distance=..1.5] run damage @s 3 weapons:bypasses_cooldown by @n[tag=monsters.broken_moon,type=stray]


particle minecraft:enchanted_hit ~ ~ ~ 0.25 10 0.25 0 600 force @a
particle minecraft:electric_spark ~ ~ ~ 0 0 0 2 80 force @a
particle flash ~ ~0.5 ~ 0 0 0 0 1 normal @a[scores={main.light_sensitivity=0}]

playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 1 1.25
playsound minecraft:entity.lightning_bolt.thunder voice @a ~ ~ ~ 1 2

# 刪除物件
execute on passengers run kill @s
kill @s