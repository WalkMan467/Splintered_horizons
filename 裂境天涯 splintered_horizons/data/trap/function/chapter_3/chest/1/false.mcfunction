execute if score #trap.chapter_2.chest trap.global.main matches 1 run return 0

scoreboard players set #trap.chapter_2.chest trap.global.main 1

setblock 1103 209 166 minecraft:campfire[lit=false]
setblock 1118 210 158 minecraft:campfire[lit=false]
setblock 1120 208 143 minecraft:campfire[lit=false]
setblock 1089 209 143 minecraft:campfire[lit=false]
setblock 1086 208 152 minecraft:campfire[lit=false]

function monsters:chapter_3/lord_of_the_cataclysm/void