
# effect
tag @s add monsters.corroder.1
data merge entity @s {NoAI:1b,Glowing:1b}
attribute @s minecraft:armor modifier add corroder 30 add_value

# particle
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 2