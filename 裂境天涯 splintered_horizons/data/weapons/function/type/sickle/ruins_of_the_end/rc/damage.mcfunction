data modify entity @s Motion[1] set value 0.5

damage @s 5 weapons:bypasses_cooldown by @p

execute on attacker run effect give @s absorption 8 1 false
execute on attacker run effect give @s instant_health 1 0 true

effect give @s wither 8 1 false