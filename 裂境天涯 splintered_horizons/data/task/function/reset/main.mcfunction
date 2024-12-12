function task:reset/smash_the_decorated_pot

tellraw @a {"text":"\n⚠: 任務已重製！\n","color":"gold"}

execute as @a at @s run playsound minecraft:block.note_block.chime voice @s ~ ~1 ~ 1 1

schedule function task:reset/main 900s