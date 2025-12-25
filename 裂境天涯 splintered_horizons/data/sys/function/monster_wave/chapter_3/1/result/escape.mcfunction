#脫離戰場
#sys.chapter_3.1~3 = 大樹、洞穴、城市 怪物波次(Monster Wave)
#sys.chapter_3.1.mw.rt =  怪物波次重製開關(Monster Wave Reset)

# score
scoreboard players set #sys.chapter_3.1.mw.rt sys.monster_wave.main 1
function sys:monster_wave/chapter_3/1/result/wave_reset

# player
tellraw @a {"text":"(已脫離戰場)","color": "red","bold": true}

# monster
kill @e[type=!#minecraft:dummy_mob,tag=sys.chapter_3.1.monster_wave]
function sys:monster_wave/wave_clear
schedule clear sys:monster_wave/chapter_3/1/summon/layout