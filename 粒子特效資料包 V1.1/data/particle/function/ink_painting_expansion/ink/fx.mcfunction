scoreboard players add #particle.ink_painting_expansion.range.fx particle 6

particle dust_color_transition{from_color:[0.000,0.000,0.000],to_color:[0.910,0.910,0.910],scale:1.5} ^ ^-0.25 ^1.5 0 0 0 0 0 normal @a


execute rotated ~6 0 \
    if score #particle.ink_painting_expansion.range.fx particle matches ..360 run \
function particle:ink_painting_expansion/ink/fx