forceload remove 10180 10100
forceload remove 9999 10070

schedule function cutscene:opening/main 1t

execute \
    as @a at @s run \
function cutscene:opening/1/0

forceload add 10042 10310
schedule function cutscene:opening/1/1 10s