
execute \
    if block ~ ~ ~ #penetrate run \
function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/true

execute \
    if block ~ ~ ~ #penetrate run \
return 0
scoreboard players remove $value monster.forest_messenger.cocoon.tp.raycast 1

# particle flame ~ ~ ~ 0 0 0 0 1 force @a


execute \
    if score $value monster.forest_messenger.cocoon.tp.raycast matches 1.. \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ #penetrate \
    if block ~ ~1 ~ #penetrate run \
function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/true

execute \
    if score $value monster.forest_messenger.cocoon.tp.raycast matches 1.. \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ #penetrate \
    if block ~ ~1 ~ #penetrate run \
return 0


execute \
    if score $value monster.forest_messenger.cocoon.tp.raycast matches ..1 \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ #penetrate \
    if block ~ ~1 ~ #penetrate run \
function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/true


execute \
    if score $value monster.forest_messenger.cocoon.tp.raycast matches 1.. \
    positioned ^ ^ ^1 \
    unless block ~ ~ ~ #penetrate run \
function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/detect