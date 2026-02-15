particle flash{color:[0.000,0.969,1.000,1.00]} ~ ~1 ~ 0 0 0 0 1 normal @a
particle dust{color:[0.000,0.969,1.000],scale:1.5} ~ ~1 ~ 1 1 1 0 20 normal @a

execute \
    as @e[sort=arbitrary,distance=..5,type=#arrows] at @s run \
function weapons:type/bow/sagittarius/rc/effect/detect

scoreboard players set @s weapon.sagittarius.charged.sfx 0


execute \
    if items entity @s weapon.mainhand bow[custom_data~{weapon:"sagittarius"}] run \
item modify entity @s weapon.mainhand weapons:type/bow/sagittarius/0

execute \
    if items entity @s weapon.offhand bow[custom_data~{weapon:"sagittarius"}] run \
item modify entity @s weapon.offhand weapons:type/bow/sagittarius/0