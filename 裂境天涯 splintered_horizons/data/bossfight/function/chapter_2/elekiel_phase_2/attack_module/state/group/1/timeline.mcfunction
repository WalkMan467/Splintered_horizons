execute \
    unless score @s bossfight.attack_module.combo.timeline matches 0.. run \
return 0

scoreboard players add @s bossfight.attack_module.combo.timeline 1

execute \
    if score @s bossfight.attack_module.combo.timeline matches 11 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/tp/use

execute \
    if score @s bossfight.attack_module.combo.timeline matches 22 \
    on passengers \
    as @s[tag=aj.boss_1.root] run \
    return run \
function aj:boss_1/animations/attack_2/tween {to_frame:1,duration:1}

execute \
    if score @s bossfight.attack_module.combo.timeline matches 41 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack2/use

execute \
    if score @s bossfight.attack_module.combo.timeline matches 61 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/tp/use

execute \
    if score @s bossfight.attack_module.combo.timeline matches 72 \
    on passengers \
    as @s[tag=aj.boss_1.root] run \
    return run \
function aj:boss_1/animations/attack_3/tween {to_frame:1,duration:1}

execute \
    if score @s bossfight.attack_module.combo.timeline matches 91 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack3/use

execute \
    if score @s bossfight.attack_module.combo.timeline matches 111 run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/tp/use

execute \
    if score @s bossfight.attack_module.combo.timeline matches 111 \
    on passengers \
    as @s[tag=aj.boss_1.root] run \
    return run \
function aj:boss_1/animations/pause_all

execute \
    if score @s bossfight.attack_module.combo.timeline matches 122 \
    on passengers \
    as @s[tag=aj.boss_1.root] run \
    return run \
function aj:boss_1/animations/attack_2/tween {to_frame:1,duration:1}

execute \
    if score @s bossfight.attack_module.combo.timeline matches 141 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack2/use


execute \
    if score @s bossfight.attack_module.combo.timeline matches 171 run \
    return run \
data modify entity @s NoGravity set value false

execute \
    unless score @s bossfight.attack_module.combo.timeline matches 181.. run \
return 0

scoreboard players reset @s bossfight.attack_module.combo.timeline
scoreboard players set @s bossfight.attack_module.state 1

execute \
    store result score @s bossfight.attack_module.cd run \
random value 160..240