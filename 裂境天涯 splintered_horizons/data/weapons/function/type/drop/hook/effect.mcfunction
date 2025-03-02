# 執行者 hook.effect
# By 紙圓 : 真的真的真的，那種同樣的東西寫相同就好（hook.effect.spawn寫spawn），不用浪費時間多寫分支，而且重點是很難維護，當系統要合併的時候也很困難。像是你要偵測說所有剛生成的實體都做某件事時，你就沒有一個特定的tag來執行，就要每個重複做，做起來很沒效率qwq。如果你還是不習慣，那總得讓我寫出東西對吧oao，我就用我的方式寫一下((

# effect
summon marker ~ ~ ~ {Tags:["hook.effect.point","summon"]}
scoreboard players operation @n[type=marker,tag=summon] weapon.hook.user.id = @s weapon.hook.user.id
tag @n[type=marker,tag=summon,limit=1] remove summon

kill @s
function weapons:type/drop/hook/point/loop

# particle
particle totem_of_undying ~ ~ ~ 0 0 0 0.5 80 force @a
playsound item.crossbow.loading_middle master @a ~ ~ ~ 10 2