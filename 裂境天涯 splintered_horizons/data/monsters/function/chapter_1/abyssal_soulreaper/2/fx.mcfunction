scoreboard players add #monster.abyssal_soulreaper.fx particle 2

execute store result score #rdm global.main run random value 1..2

execute if score #rdm global.main matches 1 positioned ^ ^ ^8 run function monsters:chapter_1/abyssal_soulreaper/2/summon
execute if score #rdm global.main matches 2 positioned ^ ^ ^6 run function monsters:chapter_1/abyssal_soulreaper/2/summon

particle dust_pillar{block_state:"minecraft:redstone_block"} ^ ^ ^7 0.5 0 0.5 1 40 normal @a

execute store result score #rdm global.main run random value 1..3
execute if score #rdm global.main matches 1 rotated ~30 0 if score #monster.abyssal_soulreaper.fx particle matches ..45 run function monsters:chapter_1/abyssal_soulreaper/2/fx
execute if score #rdm global.main matches 2 rotated ~15 0 if score #monster.abyssal_soulreaper.fx particle matches ..45 run function monsters:chapter_1/abyssal_soulreaper/2/fx
execute if score #rdm global.main matches 3 rotated ~45 0 if score #monster.abyssal_soulreaper.fx particle matches ..45 run function monsters:chapter_1/abyssal_soulreaper/2/fx