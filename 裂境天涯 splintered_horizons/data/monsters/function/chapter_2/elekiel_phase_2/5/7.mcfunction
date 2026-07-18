tag @s add forced_interrupt_animation

function monsters:chapter_2/elekiel_phase_2/4/portal/crack/tp/remove
function players:stop_animation

damage @s 10 weapons:type/sword/nightfall by @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton]

scoreboard players set @s player.animation.lock 100

playsound minecraft:block.amethyst_cluster.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.amethyst_cluster.break voice @a ~ ~1 ~ 1 0.75