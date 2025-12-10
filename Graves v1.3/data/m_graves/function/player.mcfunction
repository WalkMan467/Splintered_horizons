## Called every tick as and at every player
execute unless score @s mp.settings matches 0 run function m_graves:settings/nav
# execute if entity @s[scores={mp.death=1..}] if score #graves mp.settings matches 1 run function m_graves:graves/on_death