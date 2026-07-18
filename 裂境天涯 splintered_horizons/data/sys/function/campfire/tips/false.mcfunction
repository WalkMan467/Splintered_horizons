execute \
    unless score @s sys.campfire.tips.temp matches 1 run \
return 0

scoreboard players set @s sys.campfire.tips.temp 0

execute \
    positioned ~ ~1.5 ~ run \
kill @e[sort=arbitrary,distance=..1,type=text_display]