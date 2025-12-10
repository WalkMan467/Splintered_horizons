playsound minecraft:block.amethyst_block.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.amethyst_block.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.amethyst_block.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 1

scoreboard players add #global monster.skill.freeze.id 1
scoreboard players operation @s monster.skill.freeze.id = #global monster.skill.freeze.id
execute rotated 0 0 summon block_display run function monsters:freeze/setup

particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0 2 normal

data modify entity @s NoAI set value 1b