execute if predicate armors:type/black_hole/boots/sneak run scoreboard players add @s armor.black_hole.boots.sneak 1

execute unless predicate armors:type/black_hole/boots/sneak if score @s armor.black_hole.boots.sneak matches 1..3 run function armors:type/black_hole/animation/boots/play
execute unless predicate armors:type/black_hole/boots/sneak run scoreboard players set @s armor.black_hole.boots.sneak 0