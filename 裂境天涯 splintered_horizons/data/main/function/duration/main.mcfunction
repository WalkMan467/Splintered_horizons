# 執行者 : 身上有 duration 分數的實體（可能是計時 marker 本身，也可能是實體自己在計時）

# 計時 marker：時間到就走 kill，把載具連同附掛物一起收乾淨
# 原本是從載具 on passengers 找到 marker 再執行，現在 marker 就是執行者，省掉整段遍歷

execute \
    as @s[type=marker,tag=main.duration.timer] \
    at @s \
    if score @s duration matches ..-1 run \
function main:duration/kill


# 自己身上掛 duration 的實體：時間到就自己消失

kill @s[scores={duration=..-1}]

scoreboard players remove @s[scores={duration=0..}] duration 1
