#\
{

execute if score @s armor.resilient.cd matches 1.. run return 0

scoreboard players add @s armor.resilient.hit 0

    # If armor.resilient.hit > 5;
    execute \
        if score @s armor.resilient.hit matches ..5 run \
    function armors:type/resilient/add

    # Else;
    execute \
        if score @s armor.resilient.hit matches 6.. run \
    function armors:type/resilient/broken
#\
}