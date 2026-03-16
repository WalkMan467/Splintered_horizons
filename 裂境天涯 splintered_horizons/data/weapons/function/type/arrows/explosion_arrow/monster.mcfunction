playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 1
particle minecraft:lava ~ ~1 ~ 1 1 1 1 40
particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 normal @a

scoreboard players reset #weapon.explosion_arrow.range global.main
function weapons:type/arrows/explosion_arrow/range


execute \
    unless score #nightmare main.difficulty matches 1.. \
    as @a[distance=..3.6] run \
damage @s 8 player_explosion

execute \
    if score #nightmare main.difficulty matches 1.. run \
summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,Fuse:1,ignited:1b,CustomName:{"bold":true,"color":"dark_red","fallback":"深淵射手","italic":false,"translate":"monster.explosion_arrow_skeleton"},attributes:[{id:"minecraft:scale",base:0.0}]}

advancement revoke @a only weapons:arrows/enemy/explosion_arrow