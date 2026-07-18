
execute \
    unless block ~ ~ ~ #campfires run \
setblock ~ ~ ~ campfire replace

execute align xyz \
    positioned ~0.5 ~-0.025 ~0.5 \
    unless entity @n[sort=arbitrary,distance=..1.5,tag=sys.campfire,type=interaction] run \
summon minecraft:interaction ~ ~ ~ {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, attack: {player: [I; -917892778, 1050166911, -1708814842, -1562756102], timestamp: 6216585L}, response: 0b, Fire: 0s, width: 1.01f, Tags: ["sys.campfire"], height: 1.01f}

execute \
    positioned ~ ~-5 ~ run \
function sys:add_death_point

setblock ~ ~-6 ~ bedrock replace
setblock ~1 ~-4 ~ bedrock replace
setblock ~-1 ~-4 ~ bedrock replace
setblock ~ ~-4 ~1 bedrock replace
setblock ~ ~-4 ~-1 bedrock replace

setblock ~1 ~-5 ~ bedrock replace
setblock ~-1 ~-5 ~ bedrock replace
setblock ~ ~-5 ~1 bedrock replace
setblock ~ ~-5 ~-1 bedrock replace
setblock ~ ~-3 ~ bedrock replace
