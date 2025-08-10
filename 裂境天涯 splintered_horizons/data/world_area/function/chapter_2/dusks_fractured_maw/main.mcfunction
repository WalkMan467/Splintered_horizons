    # Detect
    execute store result score #world_area.dusks_fractured_maw global.main if entity @a[scores={world_area.daytime_weather.player=1..}]

    # If true;
    execute if score #world_area.dusks_fractured_maw global.main matches 1 unless score #world_area.dusks_fractured_maw_temp global.main matches 1 run function world_area:chapter_2/dusks_fractured_maw/daytime_weather/true

    # Else
    execute if score #world_area.dusks_fractured_maw global.main matches 0 unless score #world_area.dusks_fractured_maw_temp global.main matches 0 run function world_area:chapter_2/dusks_fractured_maw/daytime_weather/false

    execute positioned 1116 81 368 as @a[distance=..1.5] run function world_area:chapter_2/dusks_fractured_maw/boss_area/tp