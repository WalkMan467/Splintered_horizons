tag @a remove weapon.ruins_of_the_finality.screen

tp @a[tag=weapon.ruins_of_the_finality.animation.player] ~ ~ ~ ~ 0

execute \
    as @a[tag=weapon.ruins_of_the_finality.animation.player] at @s run \
function weapons:type/scythe/ruins_of_the_finality/rc/animation/2/use

function animated_java:stellar_animation/remove/this