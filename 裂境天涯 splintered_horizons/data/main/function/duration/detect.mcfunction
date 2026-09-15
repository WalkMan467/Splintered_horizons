# Entity Lifetime Timer

# 原本是每 tick 掃全世界所有非玩家實體，再對每一隻做 on passengers 關係遍歷。
# 絕大多數實體根本沒有 duration，那些函式呼叫與遍歷全是白做的。
# 改成只挑真的有 duration 分數的實體 —— 計時 marker 自己也有分數，所以照樣會被選到。

execute \
    as @e[sort=arbitrary,type=!player,scores={duration=-2147483648..2147483647},tag=!aj.global.root,tag=!aj.global.camera,tag=!aj.display] at @s run \
function main:duration/main
