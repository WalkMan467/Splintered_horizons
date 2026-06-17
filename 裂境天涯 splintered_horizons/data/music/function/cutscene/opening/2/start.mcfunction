$scoreboard players set $start music.cutscene.opening.2 $(start)
$scoreboard players set $end music.cutscene.opening.2 $(end)

tag @s add music.cutscene.opening.2

execute \
    store result storage music cutscene.opening.start int 1 run \
scoreboard players get $start music.cutscene.opening.2

execute \
    store result storage music cutscene.opening.end int 1 run \
scoreboard players get $end music.cutscene.opening.2

function music:cutscene/opening/2/1 with storage music cutscene.opening