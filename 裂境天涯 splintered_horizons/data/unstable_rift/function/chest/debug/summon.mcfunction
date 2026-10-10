# ===================================================
# 裂境 寶箱 debug 文字牌 / summon the debug label

    ## Guide [ function unstable_rift:chest/debug/summon ] >>> 裂境 寶箱 debug 文字牌 / summon the debug label
    ## Guide [ function unstable_rift:chest/debug/loop ] >>> 裂境 寶箱 debug 顯示 / rift chest debug display
    ## Guide [ function unstable_rift:chest/debug/text ] >>> 裂境 寶箱 debug 文字 / write the debug text

# ===================================================

# 執行位置是紀錄點往上一格，牌子就生在這裡
#
# 內容留空，緊接著的 chest/debug/text 會在同一 tick 填進去，
# 所以不會有空白牌子被看到的那一格
#
# see_through 開著是故意的 —— 建圖時常常是從箱子背面或是隔著牆在看
#
# 不加 duration 分數：也是 chest/debug/text 設的，那支每 tick 都會續命，
# 沒人續就被 main:duration/main 收掉


summon text_display ~ ~ ~ {Tags:["unstable_rift.chest.debug"],alignment:"center",background:1073741824,billboard:"center",brightness:{block:15,sky:15},default_background:0b,line_width:200,see_through:1b,shadow:0b,text:"",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f]}}
