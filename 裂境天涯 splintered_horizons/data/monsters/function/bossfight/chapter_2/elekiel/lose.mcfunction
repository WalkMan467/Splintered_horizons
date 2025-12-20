scoreboard players set #boss_area.chapter_2.elekiel global.main 0

schedule clear monsters:bossfight/chapter_2/elekiel/loop

tag @a remove chapter_2.elekiel.lose

gamemode adventure @a

stopsound @a record minecraft:bgm.tunetank_meridian

function monsters:chapter_2/elekiel/void

execute as @a run function music:chapter_2/bossfight/2/reset

tp @a 1109 82 373

forceload add 912 2018 912 2018

execute as @a run function players:reset_state

scoreboard players set #bossfight.chapter_2.act.setup global.main 1
