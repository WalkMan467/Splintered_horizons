execute \
    unless entity @s[tag=sys.environmental_mechanism.gravity.target] run \
playsound minecraft:block.beacon.deactivate voice @s ~ ~1 ~ 1 1

scoreboard players set @s sys.environmental_mechanism.gravity.timer 2
tag @s add sys.environmental_mechanism.gravity.target

attribute @s gravity modifier add sys.environmental_mechanism.chapter_1.gravity -0.5 add_multiplied_base