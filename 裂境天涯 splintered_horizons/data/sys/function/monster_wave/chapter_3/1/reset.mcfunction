#脫離戰場
#sys.chapter_3.1~3 = 大樹、洞穴、城市 怪物波次(Monster Wave)
#sys.chapter_3.1.mw.rt =  怪物波次重製開關(Monster Wave Reset)

scoreboard players set #sys.chapter_3.1.mw.rt sys.monster_wave.main 1
scoreboard players set .main_line sys.monster_wave.main 5
schedule clear sys:monster_wave/chapter_3/1/loop
tellraw @s {"text":"(已脫離戰場)","color": "red","bold": true}
schedule clear sys:monster_wave/chapter_3/1/summon
scoreboard players set sys.chapter_3.1 sys.monster_wave.remaining_monster 20
scoreboard players set sys.chapter_3.1 sys.monster_wave.target_wave 20
advancement revoke @a only sys:monster_wave/chapter_3/1/1
scoreboard players set sys.chapter_3.1 sys.monster_wave.kill 0
kill @e[type=!player,tag=sys.chapter_3.1.monster_wave]
kill @e[type=experience_orb]
kill @e[type=item,nbt={Item:{id:"minecraft:emerald",components:{"minecraft:custom_data":{money:1b}}}}]
kill @e[type=armor_stand,tag=sys.chapter_3.main_battle]