scoreboard players add @s particle 1

data merge entity @s[scores={particle=1..}] {transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [15.00001f, 15.000006f, 0.09999998f], translation: [1.0f, -0.5f, -0.5f]}}


execute \
    if entity @s[scores={particle=20}] run \
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~ ~ 3 1.25

execute \
    if entity @s[scores={particle=20}] run \
scoreboard players reset #particle.space_crack particle

execute \
    if entity @s[scores={particle=20}] rotated ~3 0 run \
function particle:space_crack/range


execute \
    if entity @s[scores={particle=40}] run \
function particle:space_crack/end

kill @s[scores={particle=40..}]