
# effect

tag @p add sys.fall_immunity
scoreboard players set @p player.actionbar.zipline_platform.useing 0

execute \
    as @p run \
function sys:zipline_platform/motion/use
execute \
    as @p \
    if predicate players:detect/input/front run \
function sys:zipline_platform/motion/forward/use


scoreboard players set @p player.shift.skill.disable 16
scoreboard players set @p player.disable.elytra_switch 20

kill @s
kill @n[distance=0..,tag=owner,type=marker]