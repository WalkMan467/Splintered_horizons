tag @s remove summon

execute \
    store result score @s unstable_rift.monster.reward_points run \
random value 8..15

# 階段 2: 鬆動
$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 0 run \
return 0

attribute @s max_health base set 25
attribute @s attack_damage base set 5.5
effect give @s instant_damage 1 27 true

execute \
    store result score @s unstable_rift.monster.reward_points run \
random value 15..20


# 階段 3: 錯位
$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 1 run \
return 0

attribute @s max_health base set 28
attribute @s attack_damage base set 6.5
effect give @s instant_damage 1 27 true

execute \
    store result score @s unstable_rift.monster.reward_points run \
random value 20..25

# 階段 4: 崩解
$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 2 run \
return 0

attribute @s max_health base set 32
attribute @s attack_damage base set 7.25
effect give @s instant_damage 1 27 true

execute \
    store result score @s unstable_rift.monster.reward_points run \
random value 25..40


# 階段 5: 吞噬
$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 3 run \
return 0

attribute @s max_health base set 38
attribute @s attack_damage base set 8
effect give @s instant_damage 1 27 true

execute \
    store result score @s unstable_rift.monster.reward_points run \
random value 45..70