execute \
    unless entity @s[tag=monster.apostle_of_eternity.lock] run \
return 0

scoreboard players reset @s monster.apostle_of_eternity.lock.click
scoreboard players reset @s monster.apostle_of_eternity.lock.timer

tag @s remove monster.apostle_of_eternity.lock

execute \
    as @n[sort=arbitrary,distance=..1.5,tag=aj.chain_lock.root,type=item_display] at @s run \
function animated_java:chain_lock/animations/unlock/play

attribute @s minecraft:jump_strength modifier remove monster.apostle_of_eternity.lock
attribute @s minecraft:movement_speed modifier remove monster.apostle_of_eternity.lock
attribute @s minecraft:attack_damage modifier remove monster.apostle_of_eternity.lock
attribute @s minecraft:attack_speed modifier remove monster.apostle_of_eternity.lock
attribute @s minecraft:attack_knockback modifier remove monster.apostle_of_eternity.lock
attribute @s minecraft:entity_interaction_range modifier remove monster.apostle_of_eternity.lock
attribute @s minecraft:block_interaction_range modifier remove monster.apostle_of_eternity.lock
attribute @s minecraft:block_break_speed modifier remove monster.apostle_of_eternity.lock
attribute @s minecraft:sneaking_speed modifier remove monster.apostle_of_eternity.lock
attribute @s minecraft:armor modifier remove monster.apostle_of_eternity.lock
attribute @s minecraft:knockback_resistance modifier remove monster.apostle_of_eternity.lock

particle block{block_state:"minecraft:iron_chain"} ~ ~1 ~ 0.5 1 0.5 0 300 normal @a
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 normal @a

playsound minecraft:voice.broken voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.iron_golem.death voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.anvil.land voice @a ~ ~1 ~ 1 2

scoreboard players reset @s player.animation.lock
scoreboard players reset @s player.shift.skill.disable
scoreboard players reset @s player.rc.skill.disable
scoreboard players reset @s player.actionbar.apostle_of_eternity.lock
scoreboard players reset @s player.actionbar.apostle_of_eternity.lock.1

title @s actionbar ""