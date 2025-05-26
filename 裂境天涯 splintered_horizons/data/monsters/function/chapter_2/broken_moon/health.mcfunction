# 抓 bossbar 條
execute store result bossbar minecraft:monster.boss.broken_moon value run data get entity 000000d4-0000-0002-0000-000100000002 Health

schedule function monsters:chapter_2/broken_moon/health 2t