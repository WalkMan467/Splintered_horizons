scoreboard players remove @s[scores={armor.resilient.cd=0..}] armor.resilient.cd 1


execute \
    if score @s armor.resilient.cd matches 0 run \
function armors:type/resilient/reset