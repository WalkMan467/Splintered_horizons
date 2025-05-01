#儲存天氣
execute in minecraft:overworld if predicate world_area:daytime_weather/is_sunny run scoreboard players set #world_area.dusks_fractured_maw world_area.daytime_weather.weather 0
execute in minecraft:overworld if predicate world_area:daytime_weather/is_rain run scoreboard players set #world_area.dusks_fractured_maw world_area.daytime_weather.weather 1
execute in minecraft:overworld if predicate world_area:daytime_weather/is_thunder run scoreboard players set #world_area.dusks_fractured_maw world_area.daytime_weather.weather 2


execute store result score #world_area.dusks_fractured_maw world_area.daytime_weather.time run time query daytime