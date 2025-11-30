execute on passengers run tag @s[type=player] add temp

execute unless entity @p[tag=temp,distance=..1.5] run function monsters:chapter_3/bloody_blade_spider/cast/end
damage @p[tag=temp,distance=..3] 2 monsters:chapter_3/bloody_blade_spider/dot by @s

execute on passengers run scoreboard players set @s player.animation.lock 10


execute on passengers run tag @s[type=player] remove temp