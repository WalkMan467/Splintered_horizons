schedule clear bossfight:chapter_2/elekiel_phase_2/loop

tag @a remove chapter_2.elekiel_phase_2.lose

gamemode adventure @a[gamemode=!creative]

stopsound @a record minecraft:bgm.tunetank_meridian

function bossfight:chapter_2/elekiel_phase_2/skills/void

execute \
    as @a run \
function music:chapter_2/bossfight/2/reset

execute \
    as @a run \
function players:reset_state

scoreboard players set #bossfight global.main 0