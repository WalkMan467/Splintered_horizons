# 拆掉滑索台時用：把所有指向 $(b) 的連線從別座塔的清單裡刪掉，
# 不然會留下指向已經不存在的塔的死連線

$execute \
    as @e[tag=sys.zipline_platform.link,type=marker] \
    if data entity @s data.links[{id:$(b)}] run \
data remove entity @s data.links[{id:$(b)}]
