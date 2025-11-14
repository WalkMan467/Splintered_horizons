## Players leave graves containing their items and xp on death.
execute unless score #graves.version mp.settings matches -2147483648..2147483647 run scoreboard players set #graves.version mp.settings 10300000
scoreboard objectives add mp.death deathCount
scoreboard objectives add mp.graves dummy
scoreboard players reset @a mp.death
advancement revoke @a only m_graves:left_click_interaction
advancement revoke @a only m_graves:right_click_interaction
execute unless data storage multipack:settings graves run function m_graves:settings/graves/reset

execute if score #graves mp.settings matches 0 if score #graves.disabled_keepInventory mp.settings matches 0 in overworld run gamerule keepInventory false
execute if score #graves mp.settings matches 0 if score #graves.disabled_keepInventory mp.settings matches 0 in the_nether run gamerule keepInventory false
execute if score #graves mp.settings matches 0 if score #graves.disabled_keepInventory mp.settings matches 0 in the_end run gamerule keepInventory false
execute if score #graves mp.settings matches 0 if score #graves.disabled_doImmediateRespawn mp.settings matches 1 in overworld run gamerule doImmediateRespawn true
execute if score #graves mp.settings matches 0 if score #graves.disabled_doImmediateRespawn mp.settings matches 1 in the_nether run gamerule doImmediateRespawn true
execute if score #graves mp.settings matches 0 if score #graves.disabled_doImmediateRespawn mp.settings matches 1 in the_end run gamerule doImmediateRespawn true
execute if score #graves mp.settings matches 0 run schedule clear m_graves:graves/loop_1s

execute unless score #graves mp.settings matches 0 in overworld run gamerule keepInventory true
execute unless score #graves mp.settings matches 0 in the_nether run gamerule keepInventory true
execute unless score #graves mp.settings matches 0 in the_end run gamerule keepInventory true
execute unless score #graves mp.settings matches 0 in overworld run gamerule doImmediateRespawn false
execute unless score #graves mp.settings matches 0 in the_nether run gamerule doImmediateRespawn false
execute unless score #graves mp.settings matches 0 in the_end run gamerule doImmediateRespawn false
execute unless score #graves mp.settings matches 0 run schedule function m_graves:graves/loop_1s 1s append
