scoreboard objectives add energy_infusion_stone.cavalryman.charged dummy "[注能之石] 騎兵動能值"
scoreboard objectives add energy_infusion_stone.executioner.target.id dummy "[注能之石] 處刑者 目標 ID"
scoreboard objectives add energy_infusion_stone.finality_cycle.cd dummy "[注能之石] 終焉迴路 CD"

scoreboard objectives add energy_infusion_stone.executioner.user.id dummy "[注能之石] 處刑者 使用者 ID"

# 暴食者：條件成不成立，給附魔的 entity_scores 讀
scoreboard objectives add player.eis.gluttony.active dummy

# 暴食者：鎖血倒數，等 instant_health 結算完才壓血
scoreboard objectives add player.eis.gluttony.lock dummy

# 嗜血行者：吸收的 CD，存的是絕對 GameTime
scoreboard objectives add player.eis.bloodthirsty_walker.cd dummy
