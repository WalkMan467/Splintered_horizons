execute \
    as @e[sort=arbitrary,tag=mob.elekiel.2.crack,distance=0..,type=item_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/4/portal/crack/main

execute \
    as @e[sort=arbitrary,tag=mob.elekiel.2.crack_silhouette,distance=0..,type=text_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/4/portal/crack_silhouette/main

execute \
    as @e[sort=arbitrary,tag=mob.elekiel.2.digit,distance=0..,type=text_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/4/portal/digit/main

execute \
    as @e[sort=arbitrary,tag=mob.elekiel.2.digit,distance=0..,type=text_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/4/portal/digit/main

execute \
    as @e[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2.portal.tp,type=block_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/4/portal/crack/tp/main

execute \
    as @e[sort=arbitrary,tag=monster.elekiel_phase_2.1.error_dust,distance=0..,type=text_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/1/error_dust/main

execute \
    as @e[sort=arbitrary,tag=monster.elekiel_phase_2.1.mysterray,distance=0..,type=item_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/1/mysterray/main

execute \
    as @e[sort=arbitrary,tag=monster.elekiel_phase_2.1.eye,distance=0..,type=item_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/1/eye/main

execute \
    as @e[sort=arbitrary,tag=monster.elekiel_phase_2.2.mysterray,distance=0..,type=item_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/2/mysterray/main

execute \
    as @e[tag=monster.elekiel_phase_2.2.cage,distance=0..,type=item_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/2/cage/main

execute \
    as @e[sort=arbitrary,tag=monster.elekiel_phase_2.2.cage.dot,distance=0..,type=item_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/2/cage/dot/main

execute \
    as @e[sort=arbitrary,tag=monster.elekiel_phase_2.2.cage.bullet,distance=0..,type=marker] at @s run \
function monsters:chapter_2/elekiel_phase_2/2/cage/bullet/main

execute \
    as @e[sort=arbitrary,tag=monster.elekiel_phase_2.2.error_explosion,distance=0..,type=text_display] at @s run \
function monsters:chapter_2/elekiel_phase_2/2/error_explosion/main

# FX Loop
schedule function monsters:chapter_2/elekiel_phase_2/fx.main 1t