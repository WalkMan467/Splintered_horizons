

execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/corroder/1/1

execute \
    if score @s monster.skill.casting matches 21 run \
function monsters:chapter_3/corroder/1/1

execute \
    if score @s monster.skill.casting matches 41 \
    positioned ^ ^1 ^0.5 run \
function monsters:chapter_3/corroder/1/sumon_raycast

execute \
    if score @s monster.skill.casting matches 41 \
    positioned ^ ^1 ^1 run \
function particle:tunder_red/use {duration:10,spread:1}

execute \
    if score @s monster.skill.casting matches 46 \
    positioned ^ ^1 ^3 run \
function particle:tunder_red/use {duration:8,spread:1}

execute \
    if score @s monster.skill.casting matches 51 \
    positioned ^ ^1 ^5 run \
function particle:tunder_red/use {duration:5,spread:1}

execute \
    if score @s monster.skill.casting matches 56 \
    positioned ^ ^1 ^7 run \
function particle:tunder_red/use {duration:5,spread:1}

execute \
    if score @s monster.skill.casting matches 61 \
    positioned ^ ^1 ^9 run \
function particle:tunder_red/use {duration:5,spread:1}


execute \
    if score @s monster.skill.casting matches 41..101 run \
function monsters:chapter_3/corroder/1/2

execute \
    if score @s monster.skill.casting matches 101.. run \
function monsters:chapter_3/corroder/1/end