data remove entity @s interaction

playsound minecraft:item.trident.return voice @a ~ ~0.5 ~ 1 1
particle flash ~ ~0.5 ~ 0 0 0 1 1 normal @a


execute if score #difficulty global.main matches 0 run return 0

function monsters:bossfight/chapter_2/act/remove
function monsters:bossfight/chapter_2/act/run