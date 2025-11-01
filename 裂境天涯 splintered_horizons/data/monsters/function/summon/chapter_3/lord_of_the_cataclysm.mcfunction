execute unless score #difficulty global.main matches 1.. run return 0
execute if entity @n[type=zombie,tag=monsters.lord_of_the_cataclysm] run return 0

bossbar add monsters.lord_of_the_cataclysm [{"translate":"monsters.lord_of_the_cataclysm","fallback": "災厄領主"}]
bossbar set minecraft:monsters.lord_of_the_cataclysm color red
bossbar set minecraft:monsters.lord_of_the_cataclysm style notched_10

execute summon zombie run function monsters:chapter_3/lord_of_the_cataclysm/setup

schedule function monsters:chapter_3/lord_of_the_cataclysm/main 1t