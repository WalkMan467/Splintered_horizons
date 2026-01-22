advancement revoke @s only monsters:chapter_2/elekiel_phase_2/2/out


execute \
    if score @s entity.dummy_mob matches 1.. run \
return 0

execute \
    if score @s monster.elekiel_phase_2.skill.4.effect.void matches 1.. run \
return 0

execute \
    if score @s monster.elekiel_phase_2.skill.4.portal.tp.cd matches 1.. run \
return 0

execute \
    unless score #monster.elekiel_phase_2.skill.4.portal.actived global.main matches 1.. run \
return 0

execute \
    if entity @s[tag=monster.elekiel_phase_2.skill.4.effect.void] run \
return 0

execute \
    if entity @s[tag=monsters.elekiel_phase_2.portal.tp.player] run \
return 0

execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

tag @s add forced_interrupt_animation

tag @s add monsters.elekiel_phase_2.portal.in

scoreboard players set @s player.animation.lock 9999

function players:stop_animation


playsound minecraft:block.beacon.deactivate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1

tag @s add monsters.elekiel_phase_2.portal.tp.player


execute summon block_display at @s run \
function monsters:chapter_2/elekiel_phase_2/4/portal/crack/tp/setup

scoreboard players set @s[gamemode=survival] monster.elekiel_phase_2.skill.4.player.gamemode 1
scoreboard players set @s[gamemode=creative] monster.elekiel_phase_2.skill.4.player.gamemode 2
scoreboard players set @s[gamemode=adventure] monster.elekiel_phase_2.skill.4.player.gamemode 3
scoreboard players set @s[gamemode=spectator] monster.elekiel_phase_2.skill.4.player.gamemode 4

gamemode spectator @s