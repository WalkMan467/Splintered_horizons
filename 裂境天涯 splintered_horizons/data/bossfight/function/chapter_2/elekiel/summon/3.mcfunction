# @s = BOSS 實體

#　Add bossbar
bossbar add monsters.elekiel [{"translate":"monsters.elekiel","fallback": "「空之支配者」伊萊克爾"}]
bossbar set minecraft:monsters.elekiel color red
bossbar set minecraft:monsters.elekiel style notched_10

# Loop Enable
schedule function bossfight:chapter_2/elekiel/loop 1t
schedule function monsters:chapter_2/elekiel/1/terrain/detect 1t
schedule function monsters:chapter_2/elekiel/main 1t

# Reset Function
function monsters:chapter_2/elekiel/1/timer/reset
schedule function monsters:chapter_2/elekiel/1/terrain/lock 1t

execute \
    in minecraft:overworld \
    positioned 912 55 2018 run \
function sys:add_death_point

execute \
    positioned 912 60 2018 run \
tellraw @a[sort=arbitrary,distance=..30] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

function aj:boss_1/summon {args: {animation: 'idle', start_animation: true}}

ride @n[tag=aj.boss_1.root,distance=..1,sort=arbitrary,type=item_display] mount @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton]

scoreboard players reset #repeat global.main
scoreboard players reset $timer monster.elekiel.1.terrain
scoreboard players reset $summon monster.elekiel.1.terrain
scoreboard players reset #temp.2 global.main

# Reset Casting Scoreboard
scoreboard players reset $monster.chapter_2.elekiel.1 monster.elekiel.skill.casting
scoreboard players reset $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting

# Setup Bossfight Skills CD
scoreboard players set $monster.chapter_2.elekiel.1 monster.elekiel.skill.cd 200
scoreboard players set $monster.chapter_2.elekiel.2 monster.elekiel.skill.cd 950
scoreboard players set $monster.chapter_2.elekiel.3 monster.elekiel.skill.cd 100

scoreboard players set @a player.spawnpoint.dimension 0
scoreboard players set @a player.spawnpoint.pos.x 91200
scoreboard players set @a player.spawnpoint.pos.y 6000
scoreboard players set @a player.spawnpoint.pos.z 200000


tag @a remove monster.elekiel_phase_2.2.cage.imprison.last_tick
tag @a remove monster.elekiel_phase_2.4.portal.target

# Start Bossfight Music
execute \
    as @a at @s \
    if biome ~ ~ ~ #world_area:chapter_2_bossfight run \
function music:chapter_2/bossfight/2/start

tag @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton] remove monsters.spawn