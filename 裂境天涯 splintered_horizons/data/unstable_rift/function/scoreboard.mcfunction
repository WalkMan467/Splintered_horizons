scoreboard objectives add unstable_rift.timer dummy
scoreboard objectives add unstable_rift.chapter_1.1.display.id dummy
scoreboard objectives add unstable_rift.monster.reward_points dummy

# 進入裂隙前的位置不帶區域名 —— 玩家同時只會在一個裂隙裡，
# 所以這組是全裂隙共用的，新增區域不用再加
#
# x/y/z 乘 100 存整數保住小數；dim 存維度代碼，
# 對照表在 unstable_rift:main/back/record 與 get_pos
scoreboard objectives add unstable_rift.player.pos.x dummy
scoreboard objectives add unstable_rift.player.pos.y dummy
scoreboard objectives add unstable_rift.player.pos.z dummy
scoreboard objectives add unstable_rift.player.pos.dim dummy

# 進來時擲到的降落點編號；見各區域的 land
scoreboard objectives add unstable_rift.player.land dummy

# 被送出來之後的再進入寬限期；見 unstable_rift:main/detect
scoreboard objectives add unstable_rift.chapter_1.1.cooldown dummy

# 亞斯召喚物的正數計時；見 unstable_rift:chapter_1/1/stormpromax/main
#
# 不能借用共用的 duration —— 那個是倒數制，main:duration/main 會把分數扣到 -1
# 再把實體 kill 掉，而這隻的技能是等分數「加」到 80 / 100 才收尾，語意剛好相反
scoreboard objectives add unstable_rift.stormpromax.duration dummy

# 選武器的逾時倒數與目前點到的座位編號；見 unstable_rift:main/weapon_select/use
#
# 跟 pos / land 一樣不帶區域名 —— 玩家同時只會在一個裂隙的選武器房裡
scoreboard objectives add unstable_rift.player.weapon_select dummy
scoreboard objectives add unstable_rift.player.weapon_select.slot dummy

# 生怪磚重建（絕對時間制，存的是 #gametime global.main 的目標值）
scoreboard objectives add unstable_rift.spawner.at dummy "[裂境] 生怪磚 重建時間"
scoreboard objectives add unstable_rift.spawner.snapshot dummy "[裂境] 生怪磚 下次存檔時間"

# 寶箱隱藏分：擊殺附近怪物累積，開箱時結算成戰利品等級
# 門檻寫在 unstable_rift:chest/open/settle
scoreboard objectives add unstable_rift.chest.score dummy "[裂境] 寶箱 隱藏分"
