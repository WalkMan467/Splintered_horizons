title @a[sort=arbitrary,distance=..60] title {"translate":"monster.segrina.skill.1","fallback": "技能1【靈魂拘束】"}
title @a[sort=arbitrary,distance=..60] times 20 20 20
title @a[sort=arbitrary,distance=..60] subtitle ""

tag @a remove monster.segrina.1.target

tag @a[sort=arbitrary,distance=..60] add monster.segrina.1.target
tag @a[sort=arbitrary,distance=..60,tag=!animation,gamemode=spectator] remove monster.segrina.1.target
tag @a[sort=arbitrary,distance=..60,tag=chapter_2.segrina.lose] remove monster.segrina.1.target

execute \
    as @a[sort=arbitrary,distance=..60] \
    if score @s entity.dummy_mob matches 1.. run \
tag @s remove monster.segrina.1.target


execute \
    as @r[sort=arbitrary,tag=monster.segrina.1.target,distance=..60] at @s run \
function cse:status_effects/apply/soul_restraint/use {duration:100, max: 8, value: -1}

tag @a[sort=arbitrary,distance=..60] remove monster.segrina.1.target