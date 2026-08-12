#\
{

execute \
    if score @s monster.abyss_berserker.passive.cd matches 1.. run \
return 0

execute \
    if score @s sys.silence matches 1.. run \
return 0


scoreboard players add @s monster.abyss_berserker.passive.hit 0

    # If monster.abyss_berserker.passive.hit > 5;
    execute \
        if score @s monster.abyss_berserker.passive.hit matches ..5 run \
    function monsters:chapter_1/abyss_berserker/passive/add

    # Else;
    execute \
        if score @s monster.abyss_berserker.passive.hit matches 6.. run \
    function monsters:chapter_1/abyss_berserker/passive/broken
#\
}