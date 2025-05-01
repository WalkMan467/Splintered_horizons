scoreboard players set #world_area.dusks_fractured_maw_temp global.main 1

function world_area:chapter_2/dusks_fractured_maw/daytime_weather/save


execute in minecraft:overworld run weather clear

time set 12200
gamerule doDaylightCycle false
gamerule doWeatherCycle false