
function story:tick
function items:timer_t

# 椅子
execute as @e[tag=system.sit_down,type=interaction,distance=..15] at @s run function system:sit_down/interaction/main


# 武器

function weapons:type/core/player

# 進入遊戲

execute as @s[scores={player.leave_game=1..}] run function players:join_game/0

# 里程碑

function weapons:monument/synchronize_data

# 玩家
function players:main
function players:hide/false
function players:disable/movement/main
function players:actionbar/main
function players:timer

# 區域
function world_area:main/loop