# ===================================================
# 黑洞 吸引玩家 / blackhole pull players

    ## Guide [ function monsters:chapter_2/blackhole_creeper/blackhole/main ] >>> 黑洞 吸引玩家 / blackhole pull players
    ## Guide [ function monsters:generic/creeper_detect/guide ] >>> 苦力怕偵測 分派 / creeper detect dispatch

# ===================================================

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
    as @a[distance=..6,gamemode=!creative,gamemode=!spectator,tag=monster.blackhole_creeper.dmg] at @s \
    facing entity @n[sort=arbitrary,distance=1..6,tag=monster.blackhole_creeper.blackhole.point,type=area_effect_cloud] feet \
    run \
tp @s ^ ^ ^0.25

tag @a[distance=..6] remove monster.blackhole_creeper.dmg