# 執行者 : 滑索台 interaction，執行位置已被呼叫端拉到 hitbox 中心
#
# 在中心放一個瞄準點，後面的投影對準這個而不是 interaction 的座標
# interaction 是 summon 在 ~ ~-0.5 ~ 配 height:4f，可點擊範圍是從它的座標
# 往上 4 格；舊寫法的 facing entity @s feet 永遠對準最底部，距離越近
# 那 4 格換算成的角度誤差越大（5 格外就差到 38 度）
#
# 另外發一組這次選擇專用的臨時編號 sys.zipline_platform.pick
#
# 原本是拿 setup 當初寫進去的 sys.zipline_platform.id 反查目標，但只要有
# 兩座 id 相同，interacted/3 的比對就會同時符合好幾座，return run 標到的
# 是實體迭代順序上的第一座，跟你瞄哪裡完全無關實際上場上的滑索台 id
# 全是未設定（診斷印出 id = 0），所以三座永遠都符合
# 每次選擇重發一次編號就不依賴那個持久 id 了

scoreboard players add #pick sys.zipline_platform.pick 1
scoreboard players operation @s sys.zipline_platform.pick = #pick sys.zipline_platform.pick

tag @s add sys.zipline_platform.candidate

summon marker ~ ~ ~ {Tags:["sys.zipline_platform.aim","summon"]}

scoreboard players operation @e[tag=summon,tag=sys.zipline_platform.aim,distance=..0.1,limit=1,type=marker] sys.zipline_platform.pick = @s sys.zipline_platform.pick

tag @e[tag=summon,tag=sys.zipline_platform.aim,distance=..0.1,limit=1,type=marker] remove summon
