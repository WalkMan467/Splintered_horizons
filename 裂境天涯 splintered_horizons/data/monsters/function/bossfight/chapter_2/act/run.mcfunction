gamemode survival @a[gamemode=spectator]
tag @a remove chapter_2.broken_moon.lose

scoreboard players set #boss_area.chapter_2 global.main 1

stopsound @a record minecraft:bgm.scott_buckley_terminus
stopsound @a record minecraft:bgm.makai_symphony_endless_storm

schedule function monsters:bossfight/chapter_2/broken_moon/loop 1t

execute as @a at @s if biome ~ ~ ~ world_area:chapter_2/dusks_fractured_maw run tp @s 1721 101 893 180 0

function animated_java:boss_1/remove/all
function monsters:summon/chapter_2/abyss_soulcutter

scoreboard players set #bossfight.chapter_2.act.setup global.main 0