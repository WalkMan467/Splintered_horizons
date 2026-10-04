# 執行者 : id 為 $(a) 的那座塔的連線清單 marker
#
# 清單存成複合標籤而不是純整數，就是為了 links[{id:N}] 這種查法能用
# unless 是為了不要重複加同一個目標

$execute \
    unless data entity @s data.links[{id:$(b)}] run \
data modify entity @s data.links append value {id:$(b)}
