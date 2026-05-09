scoreboard players set #bossfight global.main 0

schedule clear monsters:bossfight/chapter_2/elekiel/loop

tag @a remove chapter_2.elekiel.lose

gamemode adventure @a

stopsound @a record minecraft:bgm.tunetank_meridian

function monsters:chapter_2/elekiel/void

attribute @s safe_fall_distance modifier remove monsters.elekiel.1.kill

tag @s remove monster.elekiel.1.kill
tag @s remove monster.elekiel.1.skip

execute \
    as @a run \
function music:chapter_2/bossfight/2/reset

forceload add 912 2018 912 2018