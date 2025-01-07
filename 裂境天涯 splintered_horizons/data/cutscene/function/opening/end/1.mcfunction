tag @a remove cutscene.opening
function cutscene:opening/remove_camera

execute in minecraft:overworld run forceload remove 42 11 42 11

tellraw @a {"text":"\n【提示】: 你前方有一個黑洞，你可以嘗試看看挖掘方塊進入黑洞中心","color":"gold"}

spawnpoint @a 44 65 10

execute as @a at @s run playsound minecraft:block.note_block.chime voice @s ~ ~1 ~ 1 1