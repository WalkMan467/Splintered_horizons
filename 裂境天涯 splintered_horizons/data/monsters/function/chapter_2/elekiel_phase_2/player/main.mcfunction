attribute @s attack_damage modifier remove monster.elekiel_phase_2.effect

execute if entity @s[tag=!monster.elekiel_phase_2.effect] if predicate monsters:chapter_2/elekiel_phase_2/look run attribute @s attack_damage modifier add monster.elekiel_phase_2.effect -1024 add_multiplied_total
execute if entity @s[tag=!monster.elekiel_phase_2.effect] unless predicate monsters:chapter_2/elekiel_phase_2/look run attribute @s attack_damage modifier remove monster.elekiel_phase_2.effect

execute if entity @s[tag=monster.elekiel_phase_2.effect] unless predicate monsters:chapter_2/elekiel_phase_2/look run attribute @s attack_damage modifier add monster.elekiel_phase_2.effect -1024 add_multiplied_total
execute if entity @s[tag=monster.elekiel_phase_2.effect] if predicate monsters:chapter_2/elekiel_phase_2/look run attribute @s attack_damage modifier remove monster.elekiel_phase_2.effect