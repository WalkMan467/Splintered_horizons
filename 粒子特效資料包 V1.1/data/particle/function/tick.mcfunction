execute as @e[type=item_display,tag=mob.elekiel.2.crack] at @s run function particle:portal/crack/main
execute as @e[type=text_display,tag=mob.elekiel.2.crack_silhouette] at @s run function particle:portal/crack_silhouette/main
execute as @e[type=text_display,tag=mob.elekiel.2.digit] at @s run function particle:portal/digit/main
execute as @e[type=text_display,tag=mob.elekiel.2.digit] at @s run function particle:portal/digit/main
execute as @e[type=block_display,tag=monsters.elekiel_phase_2.portal.tp] at @s run function particle:portal/crack/tp/main

# 時空破碎
function particle:space_rupture/main

# 終焉之墟
function particle:ruins_of_the_finality_rupture/main

# 音波場域
function particle:sound_wave/main

# 宙斯閃電波
function particle:zeuss_lightning_wave/main

# 虛空場域
function particle:void_wave/main

# 災厄領主範圍特效
function particle:stone_explosion/main

# 異界晨星範圍特效
function particle:otherworld_star/main

# 科技力場波
function particle:technological_force_wave/main

# 相位裂縫
execute as @e[tag=particle.space_crack.main] at @s run function particle:space_crack/main