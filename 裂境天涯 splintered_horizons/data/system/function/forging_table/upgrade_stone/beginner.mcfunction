scoreboard players add %base system.forging_table.probability 0
scoreboard players add %final system.forging_table.probability 0

scoreboard players set %success_rate system.forging_table.probability 10

scoreboard players operation %final system.forging_table.probability += %success_rate system.forging_table.probability

scoreboard players set %success_rate system.forging_table.probability 0

execute if score %final system.forging_table.probability matches 101.. run scoreboard players set %final system.forging_table.probability 100

kill 000000d3-0000-0002-0000-00dd000000d4