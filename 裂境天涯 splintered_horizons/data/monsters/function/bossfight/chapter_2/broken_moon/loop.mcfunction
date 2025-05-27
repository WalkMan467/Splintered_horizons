schedule function monsters:bossfight/chapter_2/broken_moon/loop 1t

# 偵測 BOSS 戰結束 ;移除玩家死亡偵測
execute as @a unless score #boss_area.chapter_2 global.main matches 1.. run function monsters:bossfight/chapter_2/reset_player_die
execute unless score #boss_area.chapter_2 global.main matches 1.. run return 0


gamemode spectator @a[tag=chapter_2.broken_moon.lose]
execute as @a[tag=chapter_2.broken_moon.lose] positioned 1721 100 882 unless entity @s[distance=..40] run tp @s 1721 105 882 0 0
execute unless entity @a[tag=!chapter_2.broken_moon.lose] run function monsters:bossfight/chapter_2/broken_moon/lose