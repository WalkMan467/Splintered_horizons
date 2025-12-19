summon zombie ~ ~ ~ {DeathLootTable:"",Tags:["test"],Passengers:[{data:{aj_kill:{name:"sophia"}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}]}
# function animated_java:sophia/summon {args:{}}

# ride @n[type=item_display,tag=aj.sophia.root] mount @n[tag=test,type=zombie]

scoreboard players set @n[tag=main.duration.timer,tag=summon,type=marker] duration 60
tag @n[tag=main.duration.timer,tag=summon,type=marker] remove summon