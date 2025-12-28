
# ----- detect open ----- #

execute \
    unless score #difficulty global.main matches 0 \
    if score #sys.chapter_3.1.mw.rt sys.monster_wave.main matches 1 \
    if entity @p[sort=arbitrary,distance=..15] run \
function sys:monster_wave/chapter_3/1/open

# ----- wave system ----- #

execute \
    unless score #sys.chapter_3.1.mw.rt sys.monster_wave.main matches 0 run \
return 0

# range

execute \
    as @n[sort=arbitrary,tag=sys.chapter_3.main_battle,type=marker] at @s run \
function sys:monster_wave/chapter_3/1/range

# monster

execute \
    as @e[type=!#minecraft:dummy_mob,tag=sys.chapter_3.1.monster_wave,distance=30..] at @s facing 1425 192 -317 run \
tp @s ^ ^0.5 ^1

# loop

execute \
    unless entity @p[sort=arbitrary,distance=..30] run \
function sys:monster_wave/chapter_3/1/result/escape

execute \
    if score sys.chapter_3.1 sys.monster_wave.kill = sys.chapter_3.1 sys.monster_wave.target_wave run \
function sys:monster_wave/chapter_3/1/result/win