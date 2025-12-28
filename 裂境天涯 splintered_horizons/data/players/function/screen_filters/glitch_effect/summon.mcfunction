$summon creeper ^ ^ ^-0.0001 {Rotation:[$(x),$(y)],Passengers:[{data:{aj_kill:{name:""}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}],NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,Tags:["screen_filters.glitch_effect","summon"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:scale",base:0.001}]}

# rotate @n[type=creeper,tag=summon,tag=screen_filters.glitch_effect,distance=..3] facing entity @s feet


execute \
    as @n[type=creeper,tag=summon,tag=screen_filters.glitch_effect,distance=..3] at @s run \
tp @s ~ ~1 ~
scoreboard players operation @n[type=creeper,tag=summon,tag=screen_filters.glitch_effect,distance=..3] screen_filters.glitch_effect.id = @s player.id


execute \
    as @n[type=creeper,tag=summon,tag=screen_filters.glitch_effect,distance=..3] on passengers \
    if entity @s[type=marker,tag=main.duration.timer,tag=summon] run \
scoreboard players set @s duration 61


execute \
    as @n[type=creeper,tag=summon,tag=screen_filters.glitch_effect,distance=..3] on passengers \
    if entity @s[type=marker,tag=main.duration.timer,tag=summon] run \
tag @s remove summon

function players:hide/true {duration:60}
spectate @n[type=creeper,tag=summon,tag=screen_filters.glitch_effect,distance=..3]
tag @n[type=creeper,tag=summon,tag=screen_filters.glitch_effect,distance=..3] remove summon