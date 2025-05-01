
# scoreboard

function particle:scoreboard


execute in minecraft:overworld run forceload add 0 0 0 0

execute unless entity @e[tag=bolt_dir1] run summon marker 0 0 0 {UUID:[I; 4, 1, 5, 2],Tags:["bolt_dir1","bolt_dir"]}
execute unless entity @e[tag=bolt_dir2] run summon marker 0 0 0 {UUID:[I; 4, 2, 5, 2],Tags:["bolt_dir2","bolt_dir"]}
execute unless entity @e[tag=bolt_dir3] run summon marker 0 0 0 {UUID:[I; 4, 3, 5, 2],Tags:["bolt_dir3","bolt_dir"]}
execute unless entity @e[tag=bolt_dir4] run summon marker 0 0 0 {UUID:[I; 4, 4, 5, 2],Tags:["bolt_dir4","bolt_dir"]}
execute unless entity @e[tag=bolt_dir5] run summon marker 0 0 0 {UUID:[I; 4, 5, 5, 2],Tags:["bolt_dir5","bolt_dir"]}
execute unless entity @e[tag=bolt_dir6] run summon marker 0 0 0 {UUID:[I; 4, 6, 5, 2],Tags:["bolt_dir6","bolt_dir"]}
execute unless entity @e[tag=bolt_dir7] run summon marker 0 0 0 {UUID:[I; 4, 7, 5, 2],Tags:["bolt_dir7","bolt_dir"]}
execute unless entity @e[tag=bolt_dir8] run summon marker 0 0 0 {UUID:[I; 4, 8, 5, 2],Tags:["bolt_dir8","bolt_dir"]}

schedule function particle:lightning/continuous 0.5s