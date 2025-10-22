execute in minecraft:overworld positioned 1042 152 -78 run title @a[distance=..10] times 0 30 0
execute in minecraft:overworld positioned 1042 152 -78 run title @a[distance=..10] title {"text": "3","color": "green"}
execute in minecraft:overworld positioned 1042 152 -78 run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 1 1

schedule function system:shooting_contest/countdown/2 1s