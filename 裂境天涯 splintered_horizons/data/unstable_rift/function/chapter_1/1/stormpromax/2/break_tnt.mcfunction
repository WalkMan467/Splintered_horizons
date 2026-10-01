
# particle
particle item{item:"sea_lantern"} ~ ~ ~ 0 0 0 0.2 10 force
playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0


tp @s ~ -255 ~
execute on passengers run kill @s
kill @s