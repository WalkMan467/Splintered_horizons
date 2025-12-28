
execute \
    if entity @n[tag=aj.global.root,distance=..1.5,type=item_display] at @s run \
function main:duration/aj_kill with entity @s data.aj_kill


execute \
    on vehicle \
    if entity @s[tag=monster.forest_messenger,type=skeleton] at @s run \
function monsters:chapter_2/forest_messenger/cocoon/remove


execute \
    on vehicle run \
tp @s ~ -255 ~

execute \
    on vehicle run \
kill @s
kill @s