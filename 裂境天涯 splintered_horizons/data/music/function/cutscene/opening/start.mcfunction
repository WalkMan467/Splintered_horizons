$scoreboard players set $start music.cutscene.opening $(start)
$scoreboard players set $end music.cutscene.opening $(end)

tag @s add music.cutscene.opening

execute \
    store result storage music cutscene.opening.start int 1 run \
scoreboard players get $start music.cutscene.opening

execute \
    store result storage music cutscene.opening.end int 1 run \
scoreboard players get $end music.cutscene.opening

function music:cutscene/opening/1 with storage music cutscene.opening