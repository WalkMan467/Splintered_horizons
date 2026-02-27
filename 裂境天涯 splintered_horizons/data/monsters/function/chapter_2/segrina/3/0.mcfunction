title @a[sort=arbitrary,distance=..60] title {"translate":"monster.segrina.skill.3","fallback": "技能3【拘魂之陣】"}
title @a[sort=arbitrary,distance=..60] times 20 20 20

tag @a[sort=arbitrary,distance=..60] remove monster.segrina.skill.3.temp

execute \
    as @a[sort=arbitrary,distance=..60] at @s run \
playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 1 1
