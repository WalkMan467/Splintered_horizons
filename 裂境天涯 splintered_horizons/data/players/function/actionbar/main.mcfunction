
execute \
    as @s[gamemode=!creative] \
    if function players:actionbar/detect/runes run \
    return run \
function players:actionbar/runes

execute \
    if score @s player.actionbar.eye_of_finality matches 1.. \
    if function players:actionbar/detect/finality run \
    return run \
function players:actionbar/eye_of_finality

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.disabled_bed matches 1.. run \
    return run \
function players:actionbar/disabled_bed

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.disabled_anvil matches 1.. run \
    return run \
function players:actionbar/disabled_anvil

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.tp_book.failure matches 1.. run \
    return run \
function players:actionbar/tp_book_failure

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.beginner_tutorial.failure matches 1.. run \
    return run \
function players:actionbar/beginner_tutorial_failure

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.npc_interaction.tips matches 1.. run \
    return run \
function players:actionbar/npc_interaction

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.segrina.1 matches 1.. run \
    return run \
function players:actionbar/segrina/1

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.sys.forging_table.failure matches 1.. run \
    return run \
function players:actionbar/forging_table_failure

execute \
    if score @s player.actionbar.apostle_of_eternity.lock.1 matches 1.. run \
    return run \
function players:actionbar/apostle_of_eternity_1

execute \
    if score @s player.actionbar.apostle_of_eternity.lock matches 1.. run \
    return run \
function players:actionbar/apostle_of_eternity

execute \
    if score @s player.actionbar.weapon.earthquake_axe matches 1.. run \
    return run \
function players:actionbar/earthquake_axe

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.weapon.nightfall matches 1.. run \
    return run \
function players:actionbar/nightfall

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.weapon.spider matches 1.. run \
    return run \
function players:actionbar/spider

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.armor.wtsf matches 1.. run \
    return run \
function players:actionbar/wtsf

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.otherworld_portal.2 matches 1.. run \
    return run \
function players:actionbar/otherworld_portal_2

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.otherworld_portal.1 matches 1.. run \
    return run \
function players:actionbar/otherworld_portal_1

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.zipline_platform.useing matches 1.. run \
    return run \
function players:actionbar/zipline_platform_using

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.zipline_platform matches 1.. run \
    return run \
function players:actionbar/zipline_platform

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.tree_of_world_memory.2 matches 1.. run \
    return run \
function players:actionbar/tree_of_world_memory_2

execute \
    as @s[gamemode=!spectator] \
    if score @s player.actionbar.tree_of_world_memory.1 matches 1.. run \
    return run \
function players:actionbar/tree_of_world_memory_1