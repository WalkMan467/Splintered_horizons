stopsound @a record minecraft:bgm.tunetank_meridian

scoreboard players reset skill.1 monster.segrina.cd
scoreboard players reset skill.2 monster.segrina.cd


bossbar remove minecraft:monsters.segrina

scoreboard players set #boss_area.chapter_2.segrina global.main 0

kill 01dc4318-ed62-7e6b-0003-873f004ff9e9
kill 0023442d-ed62-7e6b-0003-873f004ff9e9

execute \
    as @a[distance=..60] at @s run \
function cse:status_effects/apply/soul_restraint/clear