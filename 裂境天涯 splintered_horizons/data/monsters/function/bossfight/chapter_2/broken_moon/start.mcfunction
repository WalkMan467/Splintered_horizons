gamemode survival @s[gamemode=spectator]
tag @a remove chapter_2.broken_moon.lose
scoreboard players set @a monster.broken_moon.player_die 0

scoreboard players set #boss_area.chapter_2 global.main 1

schedule function monsters:bossfight/chapter_2/broken_moon/loop 1t

function monsters:summon/chapter_2/abyss_soulcutter