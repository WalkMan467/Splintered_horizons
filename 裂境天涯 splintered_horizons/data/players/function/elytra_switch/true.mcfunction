
execute \
    if entity @s[tag=player.elytra_switch] run \
return 0

tag @s add player.elytra_switch

function players:uniform/refresh

particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.5 0.5 0.5 0 20 normal @a[scores={main.light_sensitivity=0}]
playsound minecraft:block.respawn_anchor.set_spawn voice @s ~ ~ ~ 9999 1.5
playsound minecraft:entity.generic.explode voice @s ~ ~ ~ 9999 1

title @s times 10 20 20
title @s title [{"color":"#4CB6C2","fallback":"敖","translate":"player.elytra_switch.1"},{"color":"#4BA5C2","fallback":"翔","translate":"player.elytra_switch.2"},{"color":"#4A95C2","text":" 👁 "},{"color":"#4884C2","fallback":"天","translate":"player.elytra_switch.3"},{"color":"#4663C2","fallback":"際","translate":"player.elytra_switch.4"}]
title @s subtitle [{"translate":"tips.player.elytra_switch.1","fallback":"按 ","color": "red"},{"keybind": "key.jump","color": "green"},{"translate":"tips.player.elytra_switch.2","fallback":" 即可飛行","color": "red"}]

scoreboard players reset #airborne.range global.main


effect give @s slow_falling 2 1 true
scoreboard players set @s player.animation.lock 2147483647
advancement revoke @s only players:elytra_switch/false
