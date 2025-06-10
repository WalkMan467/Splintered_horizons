scoreboard players operation %base system.forging_table.probability += %success_rate system.forging_table.probability

execute store result score %rdm system.forging_table.probability run random value 0..100

execute if score %rdm system.forging_table.probability <= %base system.forging_table.probability run function system:forging_table/probability/true
execute if score %rdm system.forging_table.probability > %base system.forging_table.probability run function system:forging_table/probability/false
function system:forging_table/reset

kill @e[type=item,distance=..2,tag=paste_item]