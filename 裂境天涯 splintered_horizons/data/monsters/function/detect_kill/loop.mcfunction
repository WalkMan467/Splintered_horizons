# kill monster
execute as @s[type=marker,tag=monster.marker] on vehicle unless data entity @s {DeathTime:0s} at @s run return run function monsters:detect_kill/kill_monster