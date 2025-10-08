data modify entity @s Item set from storage cartographer_charon:multiplayer_bag Item

data modify entity @s Health set value 1024
data modify entity @s Glowing set value 1b
data modify entity @s Age set value -32768
data modify entity @s PickupDelay set value 0
data modify entity @s Thrower set from storage cartographer_charon:multiplayer_uuid UUID
data modify entity @s NoGravity set value 1b
data modify entity @s Motion set value [0.0,0.0,0.0]

tag @s remove ca.new

tp @s @p