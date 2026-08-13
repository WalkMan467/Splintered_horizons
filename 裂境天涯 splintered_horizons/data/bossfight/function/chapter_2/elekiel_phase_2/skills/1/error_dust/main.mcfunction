
scoreboard players add @s mob.duration 1

# speed

execute \
    if score @s mob.duration matches ..5 at @s run \
tp @s ^ ^ ^0.1

execute \
    if score @s mob.duration matches ..10 at @s run \
tp @s ^ ^ ^0.095

execute \
    if score @s mob.duration matches ..20 at @s run \
tp @s ^ ^ ^0.045

execute \
    if score @s mob.duration matches ..30 at @s run \
tp @s ^ ^ ^0.0125

execute \
    if score @s mob.duration matches ..40 at @s run \
tp @s ^ ^ ^0.0125

# opacity

execute \
    if score @s mob.duration matches 21 run \
data modify entity @s text_opacity set value 255

execute \
    if score @s mob.duration matches 22 run \
data modify entity @s text_opacity set value 242

execute \
    if score @s mob.duration matches 23 run \
data modify entity @s text_opacity set value 229

execute \
    if score @s mob.duration matches 24 run \
data modify entity @s text_opacity set value 216

execute \
    if score @s mob.duration matches 25 run \
data modify entity @s text_opacity set value 204

execute \
    if score @s mob.duration matches 26 run \
data modify entity @s text_opacity set value 191

execute \
    if score @s mob.duration matches 27 run \
data modify entity @s text_opacity set value 178

execute \
    if score @s mob.duration matches 28 run \
data modify entity @s text_opacity set value 165

execute \
    if score @s mob.duration matches 29 run \
data modify entity @s text_opacity set value 153

execute \
    if score @s mob.duration matches 30 run \
data modify entity @s text_opacity set value 140

execute \
    if score @s mob.duration matches 31 run \
data modify entity @s text_opacity set value 127

execute \
    if score @s mob.duration matches 32 run \
data modify entity @s text_opacity set value 114

execute \
    if score @s mob.duration matches 33 run \
data modify entity @s text_opacity set value 102

execute \
    if score @s mob.duration matches 34 run \
data modify entity @s text_opacity set value 89 

execute \
    if score @s mob.duration matches 35 run \
data modify entity @s text_opacity set value 76 

execute \
    if score @s mob.duration matches 36 run \
data modify entity @s text_opacity set value 63 

execute \
    if score @s mob.duration matches 37 run \
data modify entity @s text_opacity set value 51 

execute \
    if score @s mob.duration matches 38 run \
data modify entity @s text_opacity set value 38 

execute \
    if score @s mob.duration matches 39 run \
data modify entity @s text_opacity set value 25 

execute \
    if score @s mob.duration matches 40 run \
data modify entity @s text_opacity set value 12


execute \
    if score @s mob.duration matches 41.. run \
kill @s