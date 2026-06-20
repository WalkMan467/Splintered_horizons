function particle:lightning/bolt_line
function particle:lightning/bolt_direction
scoreboard players add n bolt 2


execute \
    if score n bolt matches ..25 \
    if predicate particle:chance rotated \
    as @e[tag=bolt_dir,limit=1,sort=random,tag=!aj.display] run \
function particle:lightning/bolt_iterate
scoreboard players remove n bolt 1

execute \
    if score n bolt matches ..25 \
    positioned ^ ^ ^2 rotated \
    as @e[tag=bolt_dir,limit=1,sort=random,tag=!aj.display] run \
function particle:lightning/bolt_iterate