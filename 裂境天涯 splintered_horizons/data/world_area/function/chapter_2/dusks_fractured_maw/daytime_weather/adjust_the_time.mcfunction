#把時間與天氣調整儲存的時間與天氣


$time set $(daytime)

execute in minecraft:overworld if score #world_area.dusks_fractured_maw world_area.daytime_weather.weather matches 0 run weather clear
execute in minecraft:overworld if score #world_area.dusks_fractured_maw world_area.daytime_weather.weather matches 1 run weather rain
execute in minecraft:overworld if score #world_area.dusks_fractured_maw world_area.daytime_weather.weather matches 2 run weather thunder