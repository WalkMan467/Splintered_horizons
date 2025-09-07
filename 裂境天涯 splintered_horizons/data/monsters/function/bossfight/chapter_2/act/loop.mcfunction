schedule function monsters:bossfight/chapter_2/act/loop 2t

scoreboard players add #bossfight.chapter_2.act global.main 0
scoreboard players add #bossfight.chapter_2.act_temp global.main 0
scoreboard players add #bossfight.chapter_2.act.setup global.main 0

    # Detect

    execute unless score #bossfight.chapter_2.act.setup global.main matches 1.. run return 0
    execute positioned 1721 101 882 store result score #bossfight.chapter_2.act global.main if entity @a[gamemode=!spectator,distance=..40]

    # If true;
    execute positioned 1721 101 882 if score #bossfight.chapter_2.act global.main matches 1 if score #bossfight.chapter_2.act_temp global.main matches 0 run function monsters:bossfight/chapter_2/act/summon

    # Else
    execute positioned 1721 101 882 if score #bossfight.chapter_2.act global.main matches 0 if score #bossfight.chapter_2.act_temp global.main matches 1 run function monsters:bossfight/chapter_2/act/remove