# 執行者 sys.zipline_platform
# By 紙圓 : 真的真的真的，那種同樣的東西寫相同就好（sys.zipline_platform.spawn寫spawn），不用浪費時間多寫分支，而且重點是很難維護，當系統要合併的時候也很困難。像是你要偵測說所有剛生成的實體都做某件事時，你就沒有一個特定的tag來執行，就要每個重複做，做起來很沒效率qwq。如果你還是不習慣，那總得讓我寫出東西對吧oao，我就用我的方式寫一下((
# By WalkMan467 : 原來如此 (thinking)

# effect
summon marker ~ ~ ~ {Tags:["sys.zipline_platform.point","summon"]}

scoreboard players set @n[distance=0..,tag=sys.zipline_platform.point,tag=summon,type=marker] duration 125

scoreboard players operation @n[tag=summon,distance=0..,type=marker] sys.zipline_platform.id = @s sys.zipline_platform.id
tag @n[tag=summon,limit=1,distance=0..,type=marker] remove summon

kill @s
function sys:zipline_platform/point/loop

playsound item.crossbow.loading_middle master @a ~ ~ ~ 10 2