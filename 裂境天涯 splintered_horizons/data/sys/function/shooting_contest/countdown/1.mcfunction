execute in minecraft:overworld positioned 1042 152 -78 run title @a[distance=..10] times 0 30 0
execute in minecraft:overworld positioned 1042 152 -78 run title @a[distance=..10] title {"text": "1","color": "red"}
execute in minecraft:overworld positioned 1042 152 -78 run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 1 2

schedule function sys:shooting_contest/countdown/end 1s