execute unless block ~ ~ ~ #penetrate run function armors:type/random_teleport/end
execute unless block ~ ~ ~ #penetrate run return 0
scoreboard players remove $value armor.random_teleport.raycast 1

# particle flame ~ ~ ~ 0 0 0 0 5 force @a

execute if score $value armor.random_teleport.raycast matches 1.. rotated ~ 90 positioned ^ ^ ^1 unless block ~ ~ ~ #penetrate run function armors:type/random_teleport/point
execute if score $value armor.random_teleport.raycast matches ..1 rotated ~ 90 positioned ^ ^ ^1 if block ~ ~ ~ #penetrate run function armors:type/random_teleport/end
execute if score $value armor.random_teleport.raycast matches 1.. rotated ~ 90 positioned ^ ^ ^1 if block ~ ~ ~ #penetrate run function armors:type/random_teleport/racast