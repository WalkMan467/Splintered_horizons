summon zombie ~ ~ ~ {DeathLootTable:"",Tags:["test"],Passengers:[{data:{aj_kill:{name:"rainy_night"}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}]}
# function animated_java:rainy_night/summon {args:{}}

# ride @n[type=item_display,tag=aj.rainy_night.root] mount @n[tag=test,type=zombie]

scoreboard players set @n[tag=main.duration.timer,tag=summon,type=marker] duration 60
tag @n[tag=main.duration.timer,tag=summon,type=marker] remove summon