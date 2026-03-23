tag @a[distance=..6,gamemode=!spectator] add monster.blackhole_creeper.dmg
execute \
    as @a[distance=..6,tag=monster.blackhole_creeper.dmg] \
    if score @s sys.dummy_mob matches 1.. run \
tag @s remove monster.blackhole_creeper.dmg

execute \
    as @a[distance=..6,tag=monster.blackhole_creeper.dmg] \
    if predicate players:detect/input/sneak run \
tag @s remove monster.blackhole_creeper.dmg

tag @a[distance=..6,tag=monster.blackhole_creeper.dmg,tag=sys.dummy_mob] remove monster.blackhole_creeper.dmg

execute \
    as @a[distance=..6,gamemode=!spectator,tag=monster.blackhole_creeper.dmg] at @s \
    facing entity @n[sort=arbitrary,distance=1..6,tag=monster.blackhole_creeper.blackhole.point,type=area_effect_cloud] feet \
    run \
tp @s ^ ^ ^0.25

tag @a[distance=..6] remove monster.blackhole_creeper.dmg