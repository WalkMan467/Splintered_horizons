
scoreboard players add @s mob.duration 1

# timer
scoreboard players operation #temp mob.main = @s mob.duration
scoreboard players operation #temp mob.main %= #20 mob.main

execute \
    if score #temp mob.main matches 0 run \
function monsters:chapter_2/elekiel_phase_2/1/mysterray/2

# slime

execute \
    if score @s mob.duration matches 3.. \
    on passengers \
    if entity @s[type=slime] at @s run \
function monsters:chapter_2/elekiel_phase_2/1/mysterray/slime/main

# fx

execute \
    if score @s mob.duration matches 2 run \
data merge entity @s {transformation: {scale: [0.42f, 0.42f, 0.42f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 3 run \
data merge entity @s {transformation: {scale: [0.62f, 0.62f, 0.62f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 4 run \
data merge entity @s {transformation: {scale: [0.82f, 0.82f, 0.82f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 5 run \
data merge entity @s {transformation: {scale: [1.02f, 1.02f, 1.02f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 6 run \
data merge entity @s {transformation: {scale: [1.2f, 1.2f, 1.2f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 7 run \
data merge entity @s {transformation: {scale: [1.38f, 1.38f, 1.38f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 8 run \
data merge entity @s {transformation: {scale: [1.55f, 1.55f, 1.55f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 9 run \
data merge entity @s {transformation: {scale: [1.71f, 1.71f, 1.71f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 10 run \
data merge entity @s {transformation: {scale: [1.86f, 1.86f, 1.86f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 11 run \
data merge entity @s {transformation: {scale: [1.99f, 1.99f, 1.99f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 12 run \
data merge entity @s {transformation: {scale: [2.11f, 2.11f, 2.11f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 13 run \
data merge entity @s {transformation: {scale: [2.22f, 2.22f, 2.22f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 14 run \
data merge entity @s {transformation: {scale: [2.3f, 2.3f, 2.3f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 15 run \
data merge entity @s {transformation: {scale: [2.38f, 2.38f, 2.38f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 16 run \
data merge entity @s {transformation: {scale: [2.43f, 2.43f, 2.43f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 17 run \
data merge entity @s {transformation: {scale: [2.47f, 2.47f, 2.47f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 18 run \
data merge entity @s {transformation: {scale: [2.5f, 2.5f, 2.5f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 19 run \
data merge entity @s {transformation: {scale: [2.5f, 2.5f, 2.5f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 20 run \
data merge entity @s {transformation: {scale: [2.49f, 2.49f, 2.49f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 21 run \
data merge entity @s {transformation: {scale: [2.46f, 2.46f, 2.46f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 22 run \
data merge entity @s {transformation: {scale: [2.41f, 2.41f, 2.41f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 23 run \
data merge entity @s {transformation: {scale: [2.34f, 2.34f, 2.34f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 24 run \
data merge entity @s {transformation: {scale: [2.26f, 2.26f, 2.26f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 25 run \
data merge entity @s {transformation: {scale: [2.17f, 2.17f, 2.17f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 26 run \
data merge entity @s {transformation: {scale: [2.05f, 2.05f, 2.05f]},interpolation_duration:1}


particle minecraft:falling_dust{block_state:"gold_block"} ~ ~-0.5 ~ 0.3 0.1 0.3 0 1 force
particle minecraft:falling_dust{block_state:"black_concrete"} ~ ~-0.5 ~ 0.3 0.1 0.3 0 1 force


execute \
    if score @s mob.duration matches 320 \
    positioned -916 60 2750 \
    as @a[distance=..60] run \
damage @s 8 weapons:bypasses_cooldown_no_knockback

execute \
    if score @s mob.duration matches 320 run \
function particle:space_rupture/use


execute \
    if score @s mob.duration matches 320.. run \
function monsters:chapter_2/elekiel_phase_2/fx.void