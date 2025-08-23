execute if score @s monster.elekiel.2.player_timer matches 0 run tag @s remove monsters.elekiel.2.vampire_flower.target

execute if score @s player.health matches 2.. run damage @s 1 weapons:type/sword/nightfall

execute if score @s player.health matches 2.. run return 0

effect give @s hunger 1 1 true

attribute @s max_health modifier add monsters.elekiel.2.vampire_flower.health -0.99 add_multiplied_base