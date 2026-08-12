
# HP

execute \
    as 4264969e-e78f-4254-b860-559e7e4c2665 run \
data modify storage mob:temp text.name set from entity @s CustomName

# Timer
scoreboard players set #duration mob.duration 339
scoreboard players operation #duration mob.duration -= @s mob.duration
scoreboard players operation #duration mob.duration /= #20 mob.main

# Text
data modify storage mob:temp text.result set value [{score:{name:"#duration",objective:"mob.duration"},color:"red"},"s\n",{nbt:"text.name",storage:"mob:temp",interpret:true}]

# Update
data modify entity b7f0f8bf-1539-49ae-9c27-1ccbeafe668f text set from storage mob:temp text.result

data remove storage mob:temp text