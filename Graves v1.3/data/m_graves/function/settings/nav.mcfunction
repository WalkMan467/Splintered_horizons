## Navigates settings menus based on mp.settings score
execute if score @s mp.settings matches -1 run return run function m_graves:settings/close
execute if score @s mp.settings matches 1 run function m_graves:settings/open
execute if score @s mp.settings matches 10 run function m_graves:settings/graves/main
execute if score @s mp.settings matches 11 run function m_graves:settings/graves/info
execute if score @s mp.settings matches 12 run function m_graves:settings/graves/debug
execute if score @s mp.settings matches 13 run data merge storage multipack:settings {graves:{template:"/function m_graves:settings/save {page:13, \
  settings:{graves:{toggle:$(toggle), despawn:$(despawn), despawn_minutes:$(despawn_minutes), despawn_hours:$(despawn_hours), void_recovery:$(void_recovery), \
  void_recovery_dist:$(void_recovery_dist), locked:$(locked), key:$(key), auto_unlock:$(auto_unlock), unlock_minutes:$(unlock_minutes), unlock_hours:$(unlock_hours), \
  death_coords:$(death_coords), compass:$(compass)}}}"}}
execute if score @s mp.settings matches 13 run function m_graves:settings/graves/settings_general with storage multipack:settings graves
execute if score @s mp.settings matches 14 run data merge storage multipack:settings {graves:{template:"/function m_graves:settings/save {page:14, \
  settings:{graves:{keep_xp:$(keep_xp), keep_hotbar:$(keep_hotbar), keep_armor:$(keep_armor), keep_item:$(keep_item), lose_item:$(lose_item)}}}"}}
execute if score @s mp.settings matches 14 run function m_graves:settings/graves/settings_inventory with storage multipack:settings graves
execute if score @s mp.settings matches 15 run data merge storage multipack:settings {graves:{template:"/function m_graves:settings/save {page:15, \
  settings:{graves:{glowing:$(glowing), display_name:$(display_name), display_head:$(display_head), grave_decorators:$(grave_decorators)}}}"}}
execute if score @s mp.settings matches 15 run function m_graves:settings/graves/settings_cosmetic with storage multipack:settings graves
scoreboard players enable @s mp.settings
execute if score @s mp.settings matches 1 run scoreboard players set @s mp.settings 0
execute if score @s mp.settings matches 10..19 run scoreboard players set @s mp.settings 0
