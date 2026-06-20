execute \
    rotated as @s \
    rotated ~ 0 run \
function aj:player_projection/summon {args:{}}

playsound minecraft:block.amethyst_cluster.break voice @a ~ ~1 ~ 1 0.75

summon interaction ~ ~ ~ {Tags:["monster.elekiel_phase_2.5.act","summon"],height:2,width:1}

ride @n[distance=0..2,tag=aj.player_projection.root,type=item_display] mount @n[sort=arbitrary,distance=0..1,tag=monster.elekiel_phase_2.5.act,tag=summon,type=interaction]

scoreboard players operation @n[sort=arbitrary,distance=0..1,tag=monster.elekiel_phase_2.5.act,tag=summon,type=interaction] monster.elekiel_phase_2.skill.5.act.id = @p[tag=monster.elekiel_phase_2.5.target] player.id

tag @n[sort=arbitrary,distance=0..1,tag=monster.elekiel_phase_2.5.act,tag=summon,type=interaction] remove summon