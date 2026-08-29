# 沒有載具的死亡偵測 Marker 是孤兒：怪被瞬間移除時乘客只會被踢下來，
# 這個 Marker 之後永遠等不到它的怪 兩次確認再殺，避開剛 summon 還沒 ride 上去的那一 tick

execute \
    unless function monsters:detect_kill/has_vehicle \
    if entity @s[tag=monster.marker.orphan] run \
    return run \
kill @s

execute \
    unless function monsters:detect_kill/has_vehicle run \
    return run \
tag @s add monster.marker.orphan

tag @s remove monster.marker.orphan


# kill monster


execute \
    on vehicle \
    unless data entity @s {DeathTime:0s} at @s run \
function monsters:detect_kill/kill_monster