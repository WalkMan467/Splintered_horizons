execute unless items entity @s armor.chest *[custom_data~{id:"symbiotic_blood_oath"}] run return 0

playsound minecraft:entity.witch.drink voice @a ~ ~1 ~ 1 1
effect give @s regeneration 1 3 true