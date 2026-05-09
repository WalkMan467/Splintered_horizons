execute \
    store result score #rdm global.main run \
random value 1..8

execute \
    if score #rdm global.main matches 1 run \
tp @s 912 60 2005 facing 912 60 2018

execute \
    if score #rdm global.main matches 2 run \
tp @s 899 60 2020 facing 912 60 2018

execute \
    if score #rdm global.main matches 3 run \
tp @s 913 60 2032 facing 912 60 2018

execute \
    if score #rdm global.main matches 4 run \
tp @s 926 60 2018 facing 912 60 2018

execute \
    if score #rdm global.main matches 5 run \
tp @s 891 60 2027 facing 912 60 2018

execute \
    if score #rdm global.main matches 6 run \
tp @s 903 60 1997 facing 912 60 2018

execute \
    if score #rdm global.main matches 7 run \
tp @s 920 60 1996 facing 912 60 2018

execute \
    if score #rdm global.main matches 8 run \
tp @s 921 60 2039 facing 912 60 2018

tag @s remove monster.elekiel.1.kill
tag @s add monster.elekiel.1.skip

attribute @s safe_fall_distance modifier remove monsters.elekiel.1.kill