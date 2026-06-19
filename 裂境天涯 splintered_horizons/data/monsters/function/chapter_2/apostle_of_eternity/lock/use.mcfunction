scoreboard players set @s monster.apostle_of_eternity.lock.click 0

execute \
    rotated ~ 0 run \
function aj:chain_lock/summon {args:{animation: 'lock', start_animation: true}}

attribute @s minecraft:jump_strength modifier add monster.apostle_of_eternity.lock -0.999 add_multiplied_total
attribute @s minecraft:movement_speed modifier add monster.apostle_of_eternity.lock -1 add_multiplied_total

attribute @s minecraft:attack_damage modifier add monster.apostle_of_eternity.lock -1 add_multiplied_total
attribute @s minecraft:attack_speed modifier add monster.apostle_of_eternity.lock -1 add_multiplied_total
attribute @s minecraft:attack_knockback modifier add monster.apostle_of_eternity.lock -1 add_multiplied_total
attribute @s minecraft:entity_interaction_range modifier add monster.apostle_of_eternity.lock -1 add_multiplied_total
attribute @s minecraft:block_interaction_range modifier add monster.apostle_of_eternity.lock -1 add_multiplied_total
attribute @s minecraft:block_break_speed modifier add monster.apostle_of_eternity.lock -1 add_multiplied_total
attribute @s minecraft:sneaking_speed modifier add monster.apostle_of_eternity.lock -1 add_multiplied_total
attribute @s minecraft:armor modifier add monster.apostle_of_eternity.lock -0.8 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add monster.apostle_of_eternity.lock 1024 add_value

tag @s add monster.apostle_of_eternity.lock

playsound minecraft:block.vault.insert_item_fail voice @a ~ ~1 ~ 1 0.875
playsound minecraft:block.vault.insert_item_fail voice @a ~ ~1 ~ 1 0.875

scoreboard players set @s player.animation.lock 100
scoreboard players set @s player.shift.skill.disable 100
scoreboard players set @s player.rc.skill.disable 100
scoreboard players set @s player.actionbar.apostle_of_eternity.lock 100
scoreboard players reset @s player.actionbar.apostle_of_eternity.lock.1
scoreboard players set @s monster.apostle_of_eternity.lock.timer 100

tag @s add forced_interrupt_animation
function players:stop_animation