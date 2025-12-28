
execute \
    on passengers \
    as @s[tag=monsters.elekiel.2.vampire_flower,type=block_display] \
    on passengers run \
kill @s


execute \
    on passengers run \
kill @s

bossbar remove chapter_2.elekiel.2

execute \
    as @a run \
attribute @s max_health modifier remove monsters.elekiel.2.vampire_flower.health
kill @s