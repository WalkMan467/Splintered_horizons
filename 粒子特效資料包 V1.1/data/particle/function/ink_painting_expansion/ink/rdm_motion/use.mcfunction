tag @s remove summon
scoreboard players set @s duration 20


execute store result storage particle.ink_painting_expansion.ink.rdm_motion temp.x float 0.01 run \
random value -50..50

execute store result storage particle.ink_painting_expansion.ink.rdm_motion temp.y float 0.01 run \
random value 25..75

execute store result storage particle.ink_painting_expansion.ink.rdm_motion temp.z float 0.01 run \
random value -50..50

data modify entity @s Motion[0] set from storage particle.ink_painting_expansion.ink.rdm_motion temp.x
data modify entity @s Motion[1] set from storage particle.ink_painting_expansion.ink.rdm_motion temp.y
data modify entity @s Motion[2] set from storage particle.ink_painting_expansion.ink.rdm_motion temp.z

data remove storage particle.ink_painting_expansion.ink.rdm_motion temp