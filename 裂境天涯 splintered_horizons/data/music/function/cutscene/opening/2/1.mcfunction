execute \
    if score $start music.cutscene.opening.2 > $end music.cutscene.opening.2 run \
    return run \
function music:cutscene/opening/2/reset

stopsound @a[tag=music.cutscene.opening.2] record

scoreboard players add $start music.cutscene.opening.2 1

execute \
    store result storage music cutscene.opening.start int 1 run \
scoreboard players get $start music.cutscene.opening.2

$execute \
    as @a[tag=music.cutscene.opening.2] at @s run \
playsound minecraft:bgm.opening_bgm.$(start) record @s ~ ~1 ~ 1 1

schedule function music:cutscene/opening/2/2 5s replace