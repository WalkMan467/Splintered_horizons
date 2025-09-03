# 施法
execute if score @s monster.skill.cast.cd matches ..0 run function monsters:chapter_2/elekiel/cast/cast

execute if score $monster.chapter_2.elekiel.3.cd monster.elekiel.skill matches 0.. run scoreboard players remove $monster.chapter_2.elekiel.3.cd monster.elekiel.skill 1

execute on passengers at @s if entity @s[type=item_display,tag=aj.yibb_tstll.root] rotated as 00000100-0000-0080-0000-008000000001 run rotate @s ~ 0
ride @n[tag=aj.yibb_tstll.root,type=item_display] mount 00000100-0000-0080-0000-008000000001


execute if score $monster.chapter_2.elekiel.3.cd monster.elekiel.skill matches 0 run function monsters:chapter_2/elekiel/3/summon