scoreboard players set #monster.elekiel_phase_2.skill.4.portal.actived global.main 0

function particle:spacetime_collapse/use

summon marker ~ ~ ~ \
    { \
        UUID: [I; 2141321, -32124214, 2414121, -412421],\
        Tags: \
            [ \
                "monster.elekiel_phase_2.4.portal.point" \
            ] \
    }

scoreboard players operation 0020ac89-fe15-d2ca-0024-d629fff9b4fb monster.elekiel_phase_2.skill.4.portal.id = @p[sort=arbitrary,tag=monster.elekiel_phase_2.4.target] player.id

tag @p[sort=arbitrary,tag=monster.elekiel_phase_2.4.target] add monster.elekiel_phase_2.4.portal.target