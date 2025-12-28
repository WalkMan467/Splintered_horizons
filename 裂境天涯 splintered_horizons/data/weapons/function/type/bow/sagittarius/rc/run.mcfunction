particle flash{color:[1.0,0.0,0.0,1.0]} ~ ~1 ~ 0 0 0 0 1 normal @a
particle dust{color:[1.000,0.000,0.000],scale:1.5} ~ ~1 ~ 1 1 1 0 20 normal @a

playsound minecraft:entity.breeze.shoot voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1

scoreboard players set @s weapon.effect.starry_sky_frost 200
scoreboard players set @s weapon.sagittarius.charged.sfx 0


execute \
    if items entity @s weapon.mainhand bow[custom_data~{weapon:"sagittarius"}] run \
item modify entity @s weapon.mainhand weapons:type/bow/sagittarius/0

execute \
    if items entity @s weapon.offhand bow[custom_data~{weapon:"sagittarius"}] run \
item modify entity @s weapon.offhand weapons:type/bow/sagittarius/0