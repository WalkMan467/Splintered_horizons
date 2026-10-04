# 粒子特效全局時間
function particle:gametime

# 時空破碎

execute \
    as @a at @s run \
function particle:space_rupture/main

# 時空破碎 2

execute \
    as @a at @s run \
function particle:time_space_wave/main

# 終焉之墟

execute \
    as @a at @s run \
function particle:ruins_of_the_finality_rupture/main

# 雷霆二重奏

execute \
    as @a at @s run \
function particle:thunder_duet_wave/main

# 蘇菲亞技能

execute \
    as @a at @s run \
function particle:fsc/main

# 水墨展開

execute \
    as @a at @s run \
function particle:ink_painting_expansion/main

# 宙斯閃電波

execute \
    as @a at @s run \
function particle:zeuss_lightning_wave/main

# 射手座範圍特效

execute \
    as @a at @s run \
function particle:sagittarius_wave/main

# 虛空場域

execute \
    as @a at @s run \
function particle:void_wave/main

# 災厄領主範圍特效

execute \
    as @a at @s run \
function particle:stone_explosion/main

# 異界晨星範圍特效

execute \
    as @a at @s run \
function particle:otherworld_star/main

# 科技力場波
execute \
    as @a at @s run \
function particle:technological_force_wave/main

# 相位裂縫
execute \
    as @a at @s \
    as @e[tag=particle.space_crack.main,distance=0..] at @s run \
function particle:space_crack/main

# 時空崩塌

execute \
    as @a at @s run \
function particle:spacetime_collapse/main

# 凋零之握被動特效

execute \
    as @a at @s run \
function particle:type/expansion/grip_of_withering/passive/main