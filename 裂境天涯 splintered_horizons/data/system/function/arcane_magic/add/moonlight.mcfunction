scoreboard players add @s system.arcane_magic.cd 0
function system:arcane_magic/effect/remove_tag

execute unless score @s system.arcane_magic.cd matches ..0 run return 0

tag @s add system.arcane_magic.moonlight.add

function system:arcane_magic/main/detect