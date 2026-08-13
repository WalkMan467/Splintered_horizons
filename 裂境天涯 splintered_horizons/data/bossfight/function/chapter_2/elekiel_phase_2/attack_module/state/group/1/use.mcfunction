scoreboard players set @s bossfight.attack_module.combo.timeline 0
scoreboard players set @s bossfight.attack_module.timeline 0

scoreboard players set @s bossfight.attack_module.combo.state 1

execute \
    if entity @s[type=skeleton] run \
return 0

scoreboard players reset @s bossfight.attack_module.combo.timeline
scoreboard players reset @s bossfight.attack_module.timeline
scoreboard players reset @s bossfight.attack_module.combo.state