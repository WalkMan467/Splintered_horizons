
scoreboard objectives add monster.skill.cast.cd dummy "怪物技能目前冷卻"
scoreboard objectives add monster.skill.casting dummy "怪物技能Cast中"
scoreboard objectives add monster.skill.rdm.skill dummy "隨機放技能"
scoreboard objectives add monster.skill.silence dummy "怪物技能沉默"

scoreboard objectives add global.monsters.health dummy
scoreboard objectives add particle dummy

# ===============================================================================

# 深淵斷魂者

scoreboard objectives add monster.abyss_soulcutter dummy "深淵斷魂者血量"
scoreboard objectives add monster.abyss_soulcutter.state_machine.state dummy "深淵斷魂者狀態機行為"
scoreboard objectives add monster.abyss_soulcutter.state_machine.action dummy "深淵斷魂者狀態機運行"
scoreboard objectives add monster.abyss_soulcutter.state_machine.back dummy "深淵斷魂者後退"

# ===============================================================================

# 深淵斷魂者

scoreboard objectives add monster.effect.finality dummy "[怪物] 終焉轉化"

# ===============================================================================

# 森林信使

scoreboard objectives add monster.forest_messenger.cocoon.id dummy "[怪物] 森林信使 繭 ID"
scoreboard objectives add monster.forest_messenger.user dummy "[怪物] 森林信使 繭 使用者"
scoreboard objectives add monster.forest_messenger.cocoon.tp.raycast dummy "[怪物] 森林信使 繭 TP 射線追蹤"

# ===============================================================================

# 「空之支配者」伊萊克爾

scoreboard objectives add monster.elekiel.1.rdm_monsters dummy "[怪物] 伊萊克爾 隨機怪物ID"
scoreboard objectives add monster.elekiel.2.timer dummy "[怪物] 伊萊克爾 拘魂之花 倒計時"
scoreboard objectives add monster.elekiel.2.player_timer dummy "[怪物] 伊萊克爾 拘魂之花 玩家倒計時"
scoreboard objectives add monster.elekiel.3.player_pos.save.timer dummy "[怪物] 伊萊克爾 玩家位置儲存 計時器"
scoreboard objectives add monster.elekiel.3.timer dummy "[怪物] 伊萊克爾 末世之鐘 計時器"

scoreboard objectives add monster.elekiel.skill dummy "[怪物] 伊萊克爾 所有技能 CD"
scoreboard objectives add monster.elekiel.player_die deathCount "[怪物] 伊萊克爾 玩家死亡偵測"

# ===============================================================================