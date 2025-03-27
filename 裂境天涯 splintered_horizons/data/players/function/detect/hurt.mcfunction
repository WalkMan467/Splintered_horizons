execute unless score @s player.health >= @s player.detect.hurt run scoreboard players set @s player.hurt_time 10

scoreboard players operation @s player.detect.hurt = @s player.health