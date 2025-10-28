scoreboard players set #boss_area.chapter_2.elekiel_phase_2 global.main 0

schedule clear monsters:bossfight/chapter_2/elekiel_phase_2/loop

tag @a remove chapter_2.elekiel_phase_2.lose

gamemode adventure @a

stopsound @a record minecraft:bgm.tunetank_meridian

function monsters:chapter_2/elekiel_phase_2/void

execute as @a run function music:chapter_2/bossfight/2/reset

execute as @a run function players:reset_state