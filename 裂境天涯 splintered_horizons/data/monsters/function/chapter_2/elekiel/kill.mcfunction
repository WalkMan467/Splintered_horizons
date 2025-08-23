function monsters:chapter_2/elekiel/3/reset
execute as @e[tag=monsters.elekiel.2.vampire_flower.hit_box,type=slime] run function monsters:chapter_2/elekiel/2/vampire_flower/kill
tag @a remove monsters.elekiel.2.vampire_flower.target

function monsters:chapter_2/elekiel/1/7
advancement revoke @a only monsters:chapter_2/elekiel/1/battlefield/fire
kill 000000fb-0000-0228-0000-000100000018