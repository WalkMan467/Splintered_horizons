# Detect discarded item

execute \
    if score @s player.detect.drop matches 1.. run \
function players:detect/drop

execute \
    unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{min:-127}}}}} run \
function players:detect/in_void

execute \
    if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{min:-127}}}}} run \
function players:detect/out_void

# Detection in the air / on land

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator] \
    if predicate players:detect/air run \
function players:detect/air

execute \
    unless predicate players:detect/air run \
function players:detect/ground

# Sprint
function players:detect/is_sprint

execute \
    if score @s player.detect.jump matches 1.. run \
function players:detect/jump
# Gain Rune Detection

execute \
    if function players:detect/get_runics \
    unless entity @s[tag=player.detect.get_runics] run \
function #players:detect/get_runics

execute \
    if function players:detect/get_runics \
    unless entity @s[tag=player.detect.get_runics] run \
tag @s add player.detect.get_runics

execute \
    unless function players:detect/get_runics \
    if entity @s[tag=player.detect.get_runics] run \
tag @s remove player.detect.get_runics

# Broken Spawner

execute \
    if score @s player.detect.broken_spawner matches 1.. run \
function players:detect/broken_spawner

# Detecting Sneak
function players:detect/sneak

# Detecting injuries
function players:detect/hurt

# Detecting Death
function players:detect/death