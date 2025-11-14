## Called by functions 'interaction_left_click' and `interaction_right_click`
execute if score #graves.locked mp.settings matches 0 run return run function m_graves:graves/open_grave
# Check owner
execute if score @s mp.graves = @p[tag=multipack.interactor] mp.const run tag @s remove multipack.grave.locked
execute if entity @s[tag=!multipack.grave.locked] run return run function m_graves:graves/open_grave
# Check key
execute store result storage multipack:graves key.id int 1 run scoreboard players get @s mp.const
execute if score #graves.key mp.settings matches 1 as @p[tag=multipack.interactor] store success score &bool mp.temp run \
  function m_graves:graves/keys/check_key with storage multipack:graves key
execute if score &bool mp.temp matches 1 run tag @s remove multipack.grave.locked
execute if entity @s[tag=!multipack.grave.locked] run return run function m_graves:graves/open_grave
# Locked out
data remove entity @s interaction
title @p[tag=multipack.interactor] actionbar "The grave is locked"
playsound minecraft:block.chest.locked block @p[tag=multipack.interactor]
