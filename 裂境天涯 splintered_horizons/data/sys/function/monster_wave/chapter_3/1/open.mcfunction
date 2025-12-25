# ----- 重製波次 ----- #
# score
scoreboard players set #sys.chapter_3.1.mw.rt sys.monster_wave.main 0
scoreboard players set sys.chapter_3.1 sys.monster_wave.wave 1
scoreboard players set #sys.chapter_3.1.max sys.monster_wave.wave 4

function sys:monster_wave/chapter_3/1/result/wave_reset

# center
kill @n[sort=arbitrary,tag=sys.chapter_3.main_battle,type=marker]
summon marker ~ ~ ~ {Tags:["sys.chapter_3.main_battle"]}

# summon
kill @e[sort=arbitrary,tag=sys.chapter_3.1.monster_wave,type=!#minecraft:dummy_mob]
schedule function sys:monster_wave/chapter_3/1/summon/layout 1t

# ============================================================ #