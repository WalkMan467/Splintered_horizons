setblock 1721 103 882 air replace

scoreboard players set #bossfight.chapter_2.act_temp global.main 1


kill 00000015-0000-0002-0000-001f00000003
execute positioned 1721 103 882 as @e[type=item_display,distance=..1.5,tag=aj.boss_1.root] run function animated_java:boss_1/remove/this
execute positioned 1721 103 882 rotated 180 0 run function animated_java:boss_1/summon {args: {animation: 'idle', start_animation: true}}

summon interaction 1721 101 882 {Tags:["bossfight.chapter_2","bossfight.chapter_2.act","interaction.sound.default"],width:1,height:2,UUID:[I;21,2,31,3]}

fill 1717 101 878 1725 108 886 air
setblock 1721 101 882 minecraft:light[level=15]
setblock 1721 102 882 minecraft:light[level=15]