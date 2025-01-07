execute as @s[scores={player.die_detect=1..}] run function trap:reset_trap
scoreboard players remove @s[scores={player.die_detect=1..}] player.die_detect 1