execute \
    if score $start music.cutscene.opening > $end music.cutscene.opening run \
    return run \
function music:cutscene/opening/reset

stopsound @a[tag=music.cutscene.opening] record

scoreboard players add $start music.cutscene.opening 1

execute \
    store result storage music cutscene.opening.start int 1 run \
scoreboard players get $start music.cutscene.opening

$execute \
    as @a[tag=music.cutscene.opening] at @s run \
playsound minecraft:bgm.opening_bgm.$(start) record @s ~ ~1 ~ 1 1

schedule function music:cutscene/opening/2 5s replace