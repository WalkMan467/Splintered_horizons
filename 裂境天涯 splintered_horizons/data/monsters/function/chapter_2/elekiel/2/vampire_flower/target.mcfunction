tag @a remove monsters.elekiel.2.vampire_flower.target

tag @a add temp
tag @a[tag=!animation,gamemode=spectator] remove temp
tag @a[tag=chapter_2.elekiel.lose] remove temp
execute as @a if score @s entity.dummy_mob matches 1.. run tag @s remove temp

execute as @r[tag=temp] run function monsters:chapter_2/elekiel/2/vampire_flower/target_guide