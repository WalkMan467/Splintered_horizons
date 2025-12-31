
execute \
    unless entity @p[sort=arbitrary,distance=..15] run \
kill @s

execute \
    if entity @n[sort=arbitrary,distance=..1,tag=aj.global.root,type=item_display] run \
kill @e[sort=arbitrary,tag=sys.sit_down,type=#dummy_mob]


execute \
    as @s[tag=!active] \
    unless entity @n[sort=arbitrary,tag=!sys.sit_down.text,type=text_display,distance=..1] \
    if entity @p[distance=..2.5,gamemode=!spectator] run \
function sys:sit_down/interaction/view/1


execute \
    as @s[tag=active] \
    on passengers \
    if entity @s[type=player] run \
function sys:sit_down/interaction/view/0

execute \
    as @s[tag=active] \
    unless entity @p[distance=..2.5,gamemode=!spectator] run \
function sys:sit_down/interaction/view/0


execute \
    on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.shift.skill.disable 11


execute \
    if data entity @s interaction.timestamp run \
function sys:sit_down/interaction/run