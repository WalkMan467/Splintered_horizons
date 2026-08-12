scoreboard players set @s bossfight.attack_module.timeline 0
scoreboard players set @s bossfight.attack_module.state 3

execute \
    if entity @s[type=skeleton] run \
return 0

scoreboard players reset @s bossfight.attack_module.timeline
scoreboard players reset @s bossfight.attack_module.state