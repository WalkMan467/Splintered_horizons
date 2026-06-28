execute \
    store result score #rdm global.main run \
random value 0..100

execute \
    if score #rdm global.main matches 0..50 run \
particle minecraft:small_gust ~ ~1 ~ 0.5 0.5 0.5 1 1 normal @a[scores={player.setting.reduce_particles=0}]

execute \
    if score #rdm global.main matches 50..100 run \
particle minecraft:small_gust ~ ~1 ~ 0.5 0.5 0.5 1 1 normal @a

execute \
    if score #rdm global.main matches 50..100 run \
particle dust_color_transition{to_color:[1.000,1.000,1.000],from_color:[0.750,0.750,0.750],scale:1.5} ~ ~1 ~ 0.25 0.25 0.25 0 2 normal @a[scores={player.setting.reduce_particles=0}]

execute \
    if score #rdm global.main matches 50..100 run \
particle end_rod ~ ~1 ~ 0 0 0 0.05 1 normal @a[scores={player.setting.reduce_particles=0}]