
execute \
    if block ~ ~-1 ~ #air run \
tp @s ~ ~-2 ~ ~ ~


execute \
    if block ~ ~-1 ~ #air run \
return 0

execute \
    if entity @s[tag=ground] run \
return 0
tag @s add ground

rotate @s ~ 0
data merge entity @s {Glowing:0b, teleport_duration: 5,interpolation_duration:3,block_state: {Name: "minecraft:glowstone"}, brightness: {block: 15, sky: 15},glow_color_override: 7534335, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0f, 0.01f, 5.0f], translation: [-2.5f, 0.0f, -2.5f]}}

particle minecraft:scrape ~ ~1 ~ 0 0 0 15 100
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.vault.open_shutter voice @a ~ ~1 ~ 1 0.5
tag @s add weapon.otherworld_star.effect.user
function weapons:type/sword/otherworld_star/damage

schedule function weapons:type/sword/otherworld_star/effect_dmg 1t


execute \
    positioned ~ ~1 ~ run \
function particle:otherworld_star/use

execute \
    if entity @s[tag=weapon.otherworld_star.effect.speed] run \
effect give @a[distance=..8] speed 5 1 false

scoreboard players set @s duration 10