
scoreboard players add #temp global.main 6

particle item{item:"blue_concrete"} ^ ^ ^4 0 0.5 0 0.5 0 force

execute if score #temp global.main matches ..359 rotated ~6 0 run function monsters:stormpromax/2/2.par