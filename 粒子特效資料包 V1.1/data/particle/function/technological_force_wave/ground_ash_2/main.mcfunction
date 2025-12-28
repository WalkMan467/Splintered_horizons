# timer
scoreboard players add @s particle.technological_force_wave 1

# speed

execute \
    if score @s particle.technological_force_wave matches ..20 run \
tp @s ^ ^ ^1

# execute at @s \
    unless block ~ ~ ~ #penetrate run \
tp @s ~ ~1 ~
# execute at @s \
    if block ~ ~-1 ~ #penetrate run \
tp @s ~ ~-1 ~

# purple ash
scoreboard players operation #temp_2 global.main = @s particle.technological_force_wave
scoreboard players operation #temp_2 global.main %= 4 particle.technological_force_wave


execute \
    if score @s particle.technological_force_wave matches 0.. run \
particle trial_spawner_detection_ominous ~ ~0.5 ~ 0.25 0.25 0.25 0 1 normal @a

execute \
    if score @s particle.technological_force_wave matches 0.. run \
particle sneeze ~ ~ ~ 0 0 0 0 2 normal @a


execute \
    if score @s[tag=fx.technological_force_wave.ga2] particle.technological_force_wave matches 5 run \
scoreboard players set @s particle.technological_force_field.line.color 7

execute \
    if score @s[tag=fx.technological_force_wave.ga2] particle.technological_force_wave matches 10 run \
scoreboard players set @s particle.technological_force_field.line.color 7

execute \
    if score @s[tag=fx.technological_force_wave.ga2] particle.technological_force_wave matches 15..30 run \
scoreboard players set @s particle.technological_force_field.line.color 7


execute \
    if score @s[tag=fx.technological_force_wave.ga2] particle.technological_force_wave matches 5 run \
function particle:technological_force_field/use

execute \
    if score @s[tag=fx.technological_force_wave.ga2] particle.technological_force_wave matches 10 run \
function particle:technological_force_field/use

execute \
    if score @s[tag=fx.technological_force_wave.ga2] particle.technological_force_wave matches 15..30 run \
function particle:technological_force_field/use

# reset

execute \
    if score @s particle.technological_force_wave matches 30.. run \
function particle:technological_force_wave/ground_ash_2/end