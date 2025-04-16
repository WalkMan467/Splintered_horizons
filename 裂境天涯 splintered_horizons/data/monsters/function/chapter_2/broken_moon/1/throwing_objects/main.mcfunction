# 速度
tp @s ^ ^ ^1.25

particle electric_spark ^ ^ ^-1 0.05 0.05 0.05 0 2 force @a
particle electric_spark ^ ^ ^-0.5 0.05 0.05 0.05 0 2 force @a
particle electric_spark ^ ^ ^ 0.05 0.05 0.05 0 2 force @a
particle electric_spark ^ ^ ^0.5 0.05 0.05 0.05 0 2 force @a
particle electric_spark ^ ^ ^1 0.05 0.05 0.05 0 2 force @a

# 偵測是否擊中
execute if entity @p[distance=..1.5] run function monsters:chapter_2/broken_moon/1/throwing_objects/run
execute unless block ~ ~ ~ #penetrate run function monsters:chapter_2/broken_moon/1/throwing_objects/run