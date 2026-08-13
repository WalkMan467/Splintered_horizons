
execute \
    unless score #lock monster.elekiel.1.terrain matches 1.. run \
return 0

execute \
     in minecraft:overworld run \
forceload add 903 2003 891 2018

execute \
     in minecraft:overworld run \
forceload add 911 2028 899 2038

execute \
     in minecraft:overworld run \
forceload add 928 2031 921 2023

execute \
     in minecraft:overworld run \
forceload add 919 2003 927 2012

fill 903 59 2003 891 59 2018 minecraft:structure_void replace minecraft:yellow_stained_glass
fill 911 59 2028 899 59 2038 minecraft:structure_void replace minecraft:yellow_stained_glass
fill 928 59 2031 921 59 2023 minecraft:structure_void replace minecraft:yellow_stained_glass
fill 919 59 2003 927 59 2012 minecraft:structure_void replace minecraft:yellow_stained_glass

execute \
    unless loaded 903 59 2003 run \
    return run \
schedule function bossfight:chapter_2/elekiel/skills/1/terrain/unlock 1t

execute \
    unless loaded 891 59 2018 run \
    return run \
schedule function bossfight:chapter_2/elekiel/skills/1/terrain/unlock 1t

execute \
    unless loaded 911 59 2028 run \
    return run \
schedule function bossfight:chapter_2/elekiel/skills/1/terrain/unlock 1t

execute \
    unless loaded 899 59 2038 run \
    return run \
schedule function bossfight:chapter_2/elekiel/skills/1/terrain/unlock 1t

execute \
    unless loaded 928 59 2031 run \
    return run \
schedule function bossfight:chapter_2/elekiel/skills/1/terrain/unlock 1t

execute \
    unless loaded 921 59 2023 run \
    return run \
schedule function bossfight:chapter_2/elekiel/skills/1/terrain/unlock 1t

execute \
    unless loaded 919 59 2003 run \
    return run \
schedule function bossfight:chapter_2/elekiel/skills/1/terrain/unlock 1t

execute \
    unless loaded 927 59 2012 run \
    return run \
schedule function bossfight:chapter_2/elekiel/skills/1/terrain/unlock 1t

scoreboard players reset #lock monster.elekiel.1.terrain
schedule function bossfight:chapter_2/elekiel/skills/1/terrain/detect 1t

execute \
     in minecraft:overworld run \
forceload remove 903 2003 891 2018

execute \
     in minecraft:overworld run \
forceload remove 911 2028 899 2038

execute \
     in minecraft:overworld run \
forceload remove 928 2031 921 2023

execute \
     in minecraft:overworld run \
forceload remove 919 2003 927 2012