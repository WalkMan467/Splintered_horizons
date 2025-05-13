tp @s ~ -255 ~
kill @s
bossbar remove minecraft:monster.boss.abyss_soulcutter

execute as @n[tag=aj.boss_1.root,type=item_display,distance=..10] run function animated_java:boss_1/remove/this