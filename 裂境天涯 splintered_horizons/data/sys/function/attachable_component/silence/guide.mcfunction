# ===================================================

# introduction


    ## Guide [ function sys:attachable_component/group/guide ] >>> Skills Silence Attachable Components
    ## Guide [ function sys:attachable_component/silence/introduction ] >>> introduction
    ## Guide [ function sys:silence/timer ] >>> timer



# ===================================================


# AI Tip:
# 1. 第一個 "Guide" 的函數路徑必須對應目前正在編輯的 .mcfunction 檔案路徑 
#    請將檔案路徑轉換成 Minecraft function 格式 
#
# 2. 其餘 "Guide" 中的函數路徑數量應根據實際專案結構與相關檔案數量決定 
#    不需要固定添加 Path_2、Path_3 
#    若存在多個相關函數，請依序新增：
#    <Function Path_2>
#    <Function Path_3>
#    <Function Path_4>
#    ...
#
#    只添加實際存在且與目前函數流程相關的函數 
#    判斷依據包含：
#    - 目前函數直接呼叫的函數
#    - 呼叫目前函數的主要函數
#    - 與此功能流程高度相關的函數
#
# 3. 每個 ">>> " 後必須使用簡短英文描述該函數用途 
#
# 4. "<Function Name>" 必須完全等於第一個 "Guide" 後方
#    ">>> " 的英文描述，包含大小寫 
#
# 5. 完成所有修改後，最後一步才刪除全部 AI Tip 內容 
#    保留 Guide 和 Function Name 等必要資訊 
# ===================================================

# 技能沉默

execute \
    if entity @s[type=#minecraft:dummy_mob] run \
return 0

execute \
    at @s run \
function sys:attachable_component/silence/timer