
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

execute \
    if score #bossfight global.main matches 1.. run \
    return run \
function monsters:bossfight/chapter_2/act/failure

execute \
    if entity 00000100-0000-0080-0000-008000000001 run \
    return run \
function monsters:bossfight/chapter_2/act/failure

# Remove bossfight interaction
function monsters:bossfight/chapter_2/act/elekiel/1/false

execute \
    positioned 912 60 2018 run \
tellraw @a[sort=arbitrary,distance=..30] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

kill 0024ce6d-0003-ae59-0003-40dd00000005
kill 000009ed-0000-007b-0000-000100000001

# Bossfight start
scoreboard players set #bossfight global.main 1

#　Add bossbar
bossbar add monsters.elekiel [{"translate":"monsters.elekiel","fallback": "「空之支配者」伊萊克爾"}]
bossbar set minecraft:monsters.elekiel color red
bossbar set minecraft:monsters.elekiel style notched_10

# Loop Enable
schedule function monsters:bossfight/chapter_2/elekiel/loop 1t
schedule function monsters:chapter_2/elekiel/1/terrain/detect 1t
schedule function monsters:chapter_2/elekiel/main 1t

# Reset Function
function monsters:chapter_2/elekiel/1/timer/reset
schedule function monsters:chapter_2/elekiel/1/terrain/lock 1t

execute \
    in minecraft:overworld \
    positioned 912 55 2018 run \
function sys:add_death_point

summon skeleton 912 60 2018 {UUID:[I; 256, 128, 128, 1],DeathLootTable:"-",PersistenceRequired:1b,Tags:["freeze.immunity","sys.no_knockback","elekiel","monsters.elekiel","monsters.spawn"],Passengers:[{id:"minecraft:marker",Tags:["monster.marker"],data:{Death:"chapter_2/elekiel"}}],CustomName:{"bold":false,"color":"gold","fallback":"「空之支配者」伊萊克爾","italic":false,"translate":"monsters.elekiel"},equipment:{feet:{id:"minecraft:air",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{enchantments:{"armors:creeper_explosion_immunity":1},enchantment_glint_override:false,"minecraft:equippable":{slot:"legs",equip_sound:"entity.creaking.activate",asset_id:"elekiel"},"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:tide",show_in_tooltip:false}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",equip_sound:"entity.creaking.activate",asset_id:"elekiel"},"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:tide",show_in_tooltip:false}}},head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"air"}},mainhand:{id:"minecraft:apple",count:1,components:{item_model:"air"}},offhand:{id:"minecraft:air",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:armor_toughness",base:3},{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:1024},{id:"minecraft:max_health",base:300},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:scale",base:1}]}
function animated_java:boss_1/summon {args: {animation: 'idle', start_animation: true}}
ride @n[tag=aj.boss_1.root,distance=..1,sort=arbitrary,type=item_display] mount 00000100-0000-0080-0000-008000000001

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

tag @a remove monster.elekiel_phase_2.2.cage.imprison.last_tick
tag @a remove monster.elekiel_phase_2.4.portal.target

# Start Bossfight Music
execute \
    as @a at @s \
    if biome ~ ~ ~ #world_area:chapter_2_bossfight run \
function music:chapter_2/bossfight/2/start

tag @e[tag=monsters.spawn] remove monsters.spawn