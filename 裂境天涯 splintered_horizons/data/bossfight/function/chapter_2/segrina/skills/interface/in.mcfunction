# 抓取玩家

tag @a remove monster.segrina.bossfight.interface

execute \
    positioned 725 107 605 run \
tag @a[sort=arbitrary,dx=73,dy=26,dz=73] add monster.segrina.bossfight.interface

execute \
    positioned 725 107 605 run \
tag @a[sort=arbitrary,dx=73,dy=26,dz=73,tag=monster.segrina.bossfight.interface,tag=chapter_2.segrina.lose] add eliminate

execute \
    positioned 725 107 605 run \
tag @a[sort=arbitrary,dx=73,dy=26,dz=73,tag=monster.segrina.bossfight.interface,gamemode=spectator,tag=!animation] add eliminate