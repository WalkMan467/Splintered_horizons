# 快捷欄切換

function hotbar_sound:main

function story:tick
function items:timer_t

# 武器

function weapons:type/core/player

# 進入遊戲

execute as @s[scores={player.leave_game=1..}] run function players:join_game/0

# 里程碑

function weapons:monument/synchronize_data

# 玩家
function players:main
function players:hide/false
function players:disable_movement/main
function players:actionbar/main
function players:timer

# 區域
function world_area:main/loop