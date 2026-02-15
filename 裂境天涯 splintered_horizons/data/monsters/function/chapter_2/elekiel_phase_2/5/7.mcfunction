tag @s add forced_interrupt_animation

function monsters:chapter_2/elekiel_phase_2/4/portal/crack/tp/remove
function players:stop_animation

damage @s 10 weapons:type/sword/nightfall by 00000100-0000-0080-0000-008000000005

playsound minecraft:block.amethyst_cluster.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.amethyst_cluster.break voice @a ~ ~1 ~ 1 0.75