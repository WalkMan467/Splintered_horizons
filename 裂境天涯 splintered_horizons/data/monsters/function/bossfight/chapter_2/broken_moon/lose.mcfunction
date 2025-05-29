scoreboard players set #boss_area.chapter_2 global.main 0

tag @a remove chapter_2.broken_moon.lose

gamemode adventure @a

stopsound @a record minecraft:bgm.scott_buckley_terminus
stopsound @a record minecraft:bgm.makai_symphony_endless_storm

function monsters:chapter_2/abyss_soulcutter/void
function monsters:chapter_2/broken_moon/void

execute as @a run function music:chapter_2/bossfight/2/reset

tp @a 946.0 146 728.0

schedule clear monsters:bossfight/chapter_2/broken_moon/loop