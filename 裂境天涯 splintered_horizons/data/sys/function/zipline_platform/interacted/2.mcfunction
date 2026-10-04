
# @s = 瞄準點 marker，它帶著對應滑索台的臨時編號
#
# 選擇器加上 .pos 標籤："summon" 這個 tag 整個資料包到處都在用，
# 只靠它加 0.1 格的距離，別的系統剛好在同一點生成東西時會拿錯

summon marker ~ ~ ~ {Tags:["sys.zipline_platform.pos","summon"]}
scoreboard players operation @e[tag=summon,tag=sys.zipline_platform.pos,distance=..0.1,limit=1,type=marker] sys.zipline_platform.pick = @s sys.zipline_platform.pick
tag @e[tag=summon,tag=sys.zipline_platform.pos,distance=..0.1,limit=1,type=marker] remove summon
