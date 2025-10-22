
# HP
execute on passengers if entity @s[type=slime] run data modify storage mob:temp text.name set from entity @s CustomName

# Timer
scoreboard players set #duration mob.duration 339
scoreboard players operation #duration mob.duration -= @s mob.duration
scoreboard players operation #duration mob.duration /= #20 mob.main

# Text
data modify storage mob:temp text.result set value [{score:{name:"#duration",objective:"mob.duration"},color:"red"},"s\n",{nbt:"text.name",storage:"mob:temp",interpret:true}]
execute on passengers if entity @s[type=text_display,tag=mob.elekiel.1.text] run data modify entity @s text set from storage mob:temp text.result
data remove storage mob:temp text