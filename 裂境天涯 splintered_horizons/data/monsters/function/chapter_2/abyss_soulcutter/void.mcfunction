execute as @a at @s run function monsters:bossfight/chapter_2/reset_player_die

tp 00000014-0000-0014-0000-000100000019 ~ -255 ~
kill 00000014-0000-0014-0000-000100000019
bossbar remove minecraft:monster.boss.abyss_soulcutter

setblock 1721 103 882 air replace

function story:chapter_2/stop

scoreboard players set story.chapter_2.bossfight.ml story.chapter_2 1



function animated_java:boss_1/remove/all