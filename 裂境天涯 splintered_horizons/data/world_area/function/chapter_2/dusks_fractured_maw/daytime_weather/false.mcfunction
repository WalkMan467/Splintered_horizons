scoreboard players set #world_area.dusks_fractured_maw_temp global.main 0

execute store result storage temp daytime int 1 run scoreboard players get #world_area.dusks_fractured_maw world_area.daytime_weather.time

function world_area:chapter_2/dusks_fractured_maw/daytime_weather/adjust_the_time with storage minecraft:temp

gamerule doDaylightCycle true
gamerule doWeatherCycle true

data remove storage temp daytime