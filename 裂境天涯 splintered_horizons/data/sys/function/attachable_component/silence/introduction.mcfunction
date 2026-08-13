# ===================================================

# introduction


    ## Guide [ function sys:attachable_component/silence/introduction ] >>> introduction
    ## Guide [ function sys:attachable_component/group/guide ] >>> Skills Silence Attachable Components
    ## Guide [ function sys:silence/timer ] >>> timer



# ===================================================


# AI Tip:
# 1. 第一個 "Guide" 的函數路徑必須對應目前正在編輯的 .mcfunction 檔案路徑。
#    請將檔案路徑轉換成 Minecraft function 格式。
#
# 2. 其餘 "Guide" 中的函數路徑數量應根據實際專案結構與相關檔案數量決定。
#    不需要固定添加 Path_2、Path_3。
#    若存在多個相關函數，請依序新增：
#    <Function Path_2>
#    <Function Path_3>
#    <Function Path_4>
#    ...
#
#    只添加實際存在且與目前函數流程相關的函數。
#    判斷依據包含：
#    - 目前函數直接呼叫的函數
#    - 呼叫目前函數的主要函數
#    - 與此功能流程高度相關的函數
#
# 3. 每個 ">>> " 後必須使用簡短英文描述該函數用途。
#
# 4. "<Function Name>" 必須完全等於第一個 "Guide" 後方
#    ">>> " 的英文描述，包含大小寫。
#
# 5. 完成所有修改後，最後一步才刪除全部 AI Tip 內容。
#    保留 Guide 和 Function Name 等必要資訊。
# ===================================================



# 格式: 新增的 objectives 記分板要添加簡介 \

    # 1. 每句用一個虛擬玩家分數作為換行 \

    # 2. 在新增換行用虛擬玩家分數時必須遵循 `$introduction.<簡介目前行數>` 作為區分，且字體顏色統一用黃色 \

    # 3. 最後一行與最上面簡介第一行必須要是以 "-------------------" 作為隔開，且字體顏色統一用白色



# ====================================================================================================

scoreboard objectives add sys.silence dummy "技能沉默"



scoreboard players set $introduction.1 sys.silence 2147483647

scoreboard players set $introduction.2 sys.silence 2147483646

scoreboard players set $introduction.3 sys.silence 2147483645

scoreboard players set $introduction.4 sys.silence 2147483644



scoreboard players display numberformat $introduction.1 sys.silence fixed ""

scoreboard players display numberformat $introduction.2 sys.silence fixed ""

scoreboard players display numberformat $introduction.3 sys.silence fixed ""

scoreboard players display numberformat $introduction.4 sys.silence fixed ""



scoreboard players display name $introduction.1 sys.silence {"text":"-------------------","color": "white"}

scoreboard players display name $introduction.2 sys.silence {"translate":"sys.silence.introduction.1",fallback:"支援 玩家、怪物、BOSS","color": "yellow"}

scoreboard players display name $introduction.3 sys.silence {"translate":"sys.silence.introduction.2",fallback:"可使大部分的技能沉默，除非它有 sys.silence.immunity 標籤","color": "yellow"}

scoreboard players display name $introduction.4 sys.silence {"text":"-------------------","color": "white"}