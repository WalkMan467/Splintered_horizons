
rotate @s ~180 0
data merge entity @s {start_interpolation: 1, teleport_duration:5,interpolation_duration:5,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.5f, 1.25f], translation: [0.0f, 0.5f, 0.0f]}}

scoreboard players set @s duration 12
scoreboard players operation @s weapon.flame_of_finality.flower.id = @p[tag=temp] weapon.flame_of_finality.flower.id
tag @s remove summon

particle flame ~ ~ ~ 0 0 0 0.25 100 force @a

scoreboard players reset #weapon.flame_of_finality.blade particle
function weapons:type/scythe/flame_of_finality/lc/3/particle

execute \
    positioned ~ ~0.5 ~ \
    rotated ~ ~90 run \
function weapons:type/scythe/flame_of_finality/lc/3/fx_2/use