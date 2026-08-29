
execute \
    as @a \
    unless score @s player.leave_game matches 1.. run \
function world_area:main/reload


execute \
    as @a at @s run \
function #main:scoreboard


execute \
    as @a run \
attribute @s minecraft:waypoint_receive_range base set 0

execute \
    as @a run \
attribute @s minecraft:waypoint_transmit_range base set 0

# Music
function music:main

# Climbing claw assisted aiming
function weapons:type/drop/hook/aim_assist/main
function weapons:type/drop/hook/aim_assist/fx

# Player quick item swap functionality
function players:replace/block/main
function players:replace/torch/main
function players:replace/food/main
schedule function players:setting/backup/run 300s

# Rollback
function players:void_protection/rollback/update

# Monster load
function monsters:load

# Weapons
schedule function weapons:type/core/main 1t

# Miniature Sun
function weapons:type/drop/miniature_sun/rc/main

# Timer (1s)
schedule function monsters:timer_s 1s
schedule function armors:timer_s 1s
schedule function music:timer 1s

# 地圖世界時鐘（走現實時間，暫停也照跑）
function main:world_clock/load

# sys
schedule function sys:monument_point/main 1t
schedule function sys:forging_table/main 1t
schedule function sys:mini_game/hit_the_bullseye/main 1t
schedule function sys:monster_wave/main/loop 1t
schedule function bossfight:chapter_2/elekiel_phase_2/skills/fx.main 1t
schedule function sys:attachable_component/skills_freeze/ice_display/death/schedule 1t
schedule function sys:exclude_display_world_area_title/main 1t
schedule function sys:attachable_component/group/main 1t
schedule function sys:zipline_platform/interacted/main 1t

schedule function bossfight:chapter_2/elekiel_phase_2/attack_module/main 1t

# Hotbar Switching
schedule function hotbar_sound:guide 2t