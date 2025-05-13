execute store result score #monster.abyss_soulcutter.attack.rdm global.main run random value 1..2

execute if score #monster.abyss_soulcutter.attack.rdm global.main matches 1 run function monsters:chapter_2/abyss_soulcutter/state_machine/state/attack
execute if score #monster.abyss_soulcutter.attack.rdm global.main matches 2 run function monsters:chapter_2/abyss_soulcutter/state_machine/state/attack_2