# 執行者 : id 為 $(a) 的那座塔的連線清單 marker
#
# 先 if 再 remove，是因為路徑對不到時 data remove 會回報失敗

$execute \
    if data entity @s data.links[{id:$(b)}] run \
data remove entity @s data.links[{id:$(b)}]
