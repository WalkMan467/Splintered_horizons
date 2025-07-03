execute store result score %rdm system.forging_table.probability run random value 0..100

execute if score %rdm system.forging_table.probability <= %final system.forging_table.probability as @p run function weapons:get/sword/twilight_wind
execute if score %rdm system.forging_table.probability <= %final system.forging_table.probability run function system:forging_table/probability/true

execute if score %rdm system.forging_table.probability > %final system.forging_table.probability as @p run function weapons:get/sword/wind_sword
execute if score %rdm system.forging_table.probability > %final system.forging_table.probability run function system:forging_table/probability/false

function system:forging_table/reset

kill @e[type=item,distance=..2.5,tag=paste_item]