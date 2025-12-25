execute if score #difficulty global.main matches 1 run return 0
execute if score #sys.chapter_3.1.mw.rt sys.monster_wave.main matches 2 run return 0

# Wave 1
execute if score sys.chapter_3.1 sys.monster_wave.wave matches 1 in minecraft:overworld positioned 1425 192 -317 unless entity @n[sort=arbitrary,distance=..30,tag=sys.chapter_3.1.monster_wave] run function sys:monster_wave/chapter_3/1/summon/run

# Wave 2
execute if score sys.chapter_3.1 sys.monster_wave.wave matches 2 in minecraft:overworld positioned 1425 192 -317 unless entity @n[sort=arbitrary,distance=..30,tag=sys.chapter_3.1.monster_wave] run function sys:monster_wave/chapter_3/1/summon/run

# Wave 3
execute if score sys.chapter_3.1 sys.monster_wave.wave matches 3 in minecraft:overworld positioned 1425 192 -317 unless entity @n[sort=arbitrary,distance=..30,tag=sys.chapter_3.1.monster_wave] run function sys:monster_wave/chapter_3/1/summon/run

# Wave 4
execute if score sys.chapter_3.1 sys.monster_wave.wave matches 4 in minecraft:overworld positioned 1425 192 -317 unless entity @n[sort=arbitrary,distance=..30,tag=sys.chapter_3.1.monster_wave] run function sys:monster_wave/chapter_3/1/result/win

execute if score sys.chapter_3.1 sys.monster_wave.wave matches 1..5 run schedule function sys:monster_wave/chapter_3/1/summon/layout 1t