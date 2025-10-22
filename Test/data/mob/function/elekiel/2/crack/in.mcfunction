advancement revoke @s only mob:elekiel/2/out

playsound minecraft:block.beacon.deactivate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1

scoreboard players set #monsters.elekiel.effect.return global.main 0

execute unless entity @s[tag=monster.elekiel_phase_2.effect] run scoreboard players set #monsters.elekiel.effect.return global.main 1
execute unless entity @s[tag=monster.elekiel_phase_2.effect] run effect give @s glowing infinite 255 true
execute unless entity @s[tag=monster.elekiel_phase_2.effect] run tag @s add monster.elekiel_phase_2.effect
execute if score #monsters.elekiel.effect.return global.main matches 1 run return 0

execute if entity @s[tag=monster.elekiel_phase_2.effect] run effect clear @s glowing
execute if entity @s[tag=monster.elekiel_phase_2.effect] run tag @s remove monster.elekiel_phase_2.effect