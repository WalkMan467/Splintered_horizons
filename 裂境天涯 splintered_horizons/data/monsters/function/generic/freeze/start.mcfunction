playsound minecraft:block.amethyst_block.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.amethyst_block.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.amethyst_block.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 1

scoreboard players add #global sys.skills_freeze.id 1
scoreboard players operation @s sys.skills_freeze.id = #global sys.skills_freeze.id

execute rotated 0 0 summon block_display run \
function monsters:generic/freeze/setup

particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0 2 normal

data modify entity @s NoAI set value 1b