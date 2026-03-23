stopsound @a[tag=music.cutscene.opening] record

tag @a[tag=music.cutscene.opening] remove music.cutscene.opening

scoreboard players reset $start music.cutscene.opening
scoreboard players reset $end music.cutscene.opening

schedule clear music:cutscene/opening/2