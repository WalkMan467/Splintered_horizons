# ===================================================
# 水之魔劍 水鏡之光 被動 觸發 / sword aquilumera passive activate

    ## Guide [ function weapons:type/sword/aquilumera/passive/use ] >>> 水之魔劍 水鏡之光 被動 觸發 / sword aquilumera passive activate

# ===================================================

# 已停用，請勿在這裡加指令。
#
# 倒影的消耗改由進度 weapons:type/sword/aquilumera/hurt 處理，拿任何武器近戰都吃得到。
# 附魔 weapons:type/sword/aquilumera/passive/use 的 post_attack 已經從 JSON 拿掉，
# 但附魔是動態註冊表，要完整退出再進世界才會套用。
# 在那之前舊的附魔還是會呼叫這支，留空殼才不會跟進度重複扣兩層。
# 重進世界一次之後，這個檔案就可以刪除。
