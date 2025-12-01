bossbar remove minecraft:monsters.lord_of_the_cataclysm

schedule clear monsters:chapter_3/lord_of_the_cataclysm/main

scoreboard players set #trap.chapter_2.chest.actived trap.global.main 0

setblock 1103 209 166 minecraft:campfire[lit=true]
setblock 1118 210 158 minecraft:campfire[lit=true]
setblock 1120 208 143 minecraft:campfire[lit=true]
setblock 1089 209 143 minecraft:campfire[lit=true]
setblock 1086 208 152 minecraft:campfire[lit=true]

advancement grant @a only music:chapter_3/lord_of_the_cataclysm/reset

particle flash{color:[1.000,0.000,0.000,1.00]} 1101 207 148 0 0 0 0 0 normal
particle minecraft:totem_of_undying 1101 207 148 0 0 0 0.5 40
playsound minecraft:entity.ender_eye.death voice @a 1101 206 148 5 0.5
playsound minecraft:entity.ender_eye.death voice @a 1101 206 148 5 0.5
playsound minecraft:entity.firework_rocket.twinkle_far voice @a 1101 206 148 5 1

setblock 1101 206 148 chest[facing=south]
setblock 1101 207 148 light[level=15]

loot replace block 1101 206 148 container.13 loot weapons:get/axe/earthquake_axe
item replace block 1101 206 148 container.3 with red_stained_glass_pane
item replace block 1101 206 148 container.4 with red_stained_glass_pane
item replace block 1101 206 148 container.5 with red_stained_glass_pane
item replace block 1101 206 148 container.12 with red_stained_glass_pane
item replace block 1101 206 148 container.14 with red_stained_glass_pane
item replace block 1101 206 148 container.21 with red_stained_glass_pane
item replace block 1101 206 148 container.22 with red_stained_glass_pane
item replace block 1101 206 148 container.23 with red_stained_glass_pane