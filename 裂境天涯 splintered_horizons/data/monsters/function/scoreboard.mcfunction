
scoreboard objectives add monster.skill.cast.cd dummy "怪物技能目前冷卻"
scoreboard objectives add monster.skill.casting dummy "怪物技能Cast中"
scoreboard objectives add monster.skill.rdm.skill dummy "隨機放技能"
scoreboard objectives add monster.skill.silence dummy "怪物技能沉默"
scoreboard objectives add monster.abyss_explode.timer dummy "夢魘模式深淵怪物爆炸"
scoreboard objectives add monster.skill.ai_controller.cd dummy "怪物 AI 控制器 CD"
scoreboard objectives add monster.skill.ai_controller.casting dummy "怪物 AI 控制器 Cast"
scoreboard objectives add monster.skill.ai_controller.end dummy "怪物 AI 控制器 End"

scoreboard objectives add global.monsters.health dummy
scoreboard objectives add particle dummy

# ===============================================================================

# 深淵斷魂者

scoreboard objectives add monster.abyss_soulcutter.effect dummy "深淵斷魂者流血狀態"
scoreboard objectives add monster.abyss_soulcutter.effect.delay dummy "深淵斷魂者流血"

# ===============================================================================

# 深淵狂暴者

scoreboard objectives add monster.abyss_berserker.passive.cd dummy "深淵狂暴者 被動 CD"
scoreboard objectives add monster.abyss_berserker.passive.hit dummy "深淵狂暴者 受擊次數"
scoreboard objectives add monster.abyss_berserker.passive.timer dummy "深淵狂暴者 被動計時器"

# ===============================================================================

# 烈陽使者

scoreboard objectives add monster.sunfire_emissary.death.timer dummy "烈陽使者 自爆蓄力計時器"
scoreboard objectives add monster.sunfire_emissary.death.fx dummy "烈陽使者 自爆特效"
scoreboard objectives add monster.sunfire_emissary.1.raycast dummy "烈陽使者 雷射射線"
scoreboard objectives add monster.sunfire_emissary.1.sunfire_actived.sfx dummy "烈陽使者 音效"

# ===============================================================================

# 暗蝕的烈陽

scoreboard objectives add monster.sun_of_the_abyssal_eclipse.death.timer dummy "暗蝕的烈陽 自爆蓄力計時器"
scoreboard objectives add monster.sun_of_the_abyssal_eclipse.death.fx dummy "暗蝕的烈陽 自爆特效"
scoreboard objectives add monster.sun_of_the_abyssal_eclipse.1.raycast dummy "暗蝕的烈陽 雷射射線"
scoreboard objectives add monster.sun_of_the_abyssal_eclipse.1.sunfire_actived.sfx dummy "暗蝕的烈陽 音效"

# ===============================================================================


scoreboard objectives add monster.effect.finality dummy "[怪物] 終焉轉化"

# ===============================================================================

# 森林信使

scoreboard objectives add monster.forest_messenger.cocoon.id dummy "[怪物] 森林信使 繭 ID"
scoreboard objectives add monster.forest_messenger.user dummy "[怪物] 森林信使 繭 使用者"
scoreboard objectives add monster.forest_messenger.cocoon.tp.raycast dummy "[怪物] 森林信使 繭 TP 射線追蹤"

# ===============================================================================

# 災厄之主

scoreboard objectives add monster.lord_of_the_cataclysm.1.rdm dummy "[怪物] 災厄之主 生成隨機值"

# ===============================================================================

# 時空裂痕的使者

scoreboard objectives add monster.emissary_of_the_temporal_rift.id dummy "[怪物] 時空裂痕的使者 召喚物 ID"
scoreboard objectives add monster.emissary_of_the_temporal_rift.key.timer dummy "[怪物] 時空裂痕的使者 時空之鑰 計時器"

# ===============================================================================

# 「空之支配者」伊萊克爾

scoreboard objectives add monster.elekiel.1.rdm_monsters dummy "[怪物] 伊萊克爾 隨機怪物ID"
scoreboard objectives add monster.elekiel.2.timer dummy "[怪物] 伊萊克爾 拘魂之花 倒計時"
scoreboard objectives add monster.elekiel.2.player_timer dummy "[怪物] 伊萊克爾 拘魂之花 玩家倒計時"
scoreboard objectives add monster.elekiel.3.player_pos.save.timer dummy "[怪物] 伊萊克爾 玩家位置儲存 計時器"
scoreboard objectives add monster.elekiel.3.timer dummy "[怪物] 伊萊克爾 末世之鐘 計時器"
scoreboard objectives add monster.elekiel.3.state dummy "[怪物] 伊萊克爾 狀態ID"
scoreboard objectives add monster.elekiel.3.atk.delay dummy "[怪物] 伊萊克爾 狀態ID"

scoreboard objectives add monster.elekiel.skill.cd dummy "[怪物] 伊萊克爾 技能 CD"
scoreboard objectives add monster.elekiel.skill.casting dummy "[怪物] 伊萊克爾 技能 釋放中"

scoreboard objectives add monster.elekiel.player_die deathCount "[怪物] 伊萊克爾 玩家死亡偵測"

# ===============================================================================

# 「空之支配者」伊萊克爾 二階段

scoreboard objectives add monster.elekiel_phase_2.cd dummy "[怪物] 伊萊克爾二階段 CD"

scoreboard objectives add monster.elekiel_phase_2.skill.1.casting dummy "[怪物] 伊萊克爾二階段 技能1 施法中"
scoreboard objectives add monster.elekiel_phase_2.skill.2.casting dummy "[怪物] 伊萊克爾二階段 技能2 施法中"
scoreboard objectives add monster.elekiel_phase_2.skill.3.casting dummy "[怪物] 伊萊克爾二階段 技能3 施法中"
scoreboard objectives add monster.elekiel_phase_2.skill.4.casting dummy "[怪物] 伊萊克爾二階段 技能4 施法中"
scoreboard objectives add monster.elekiel_phase_2.skill.5.casting dummy "[怪物] 伊萊克爾二階段 技能5 施法中"
scoreboard objectives add monster.elekiel_phase_2.skill.5.act.click dummy "[怪物] 伊萊克爾二階段 技能5 殘影點擊"
scoreboard objectives add monster.elekiel_phase_2.skill.5.act.id dummy "[怪物] 伊萊克爾二階段 技能5 殘影 ID"
scoreboard objectives add monster.elekiel_phase_2.skill.4.effect.void dummy "[怪物] 伊萊克爾二階段 技能4 虛空折越"
scoreboard objectives add monster.elekiel_phase_2.skill.4.portal.id dummy "[怪物] 伊萊克爾二階段 技能4 傳送門ID"
scoreboard objectives add monster.elekiel_phase_2.skill.4.player.gamemode dummy "[怪物] 伊萊克爾二階段 技能4 遊戲模式"
scoreboard objectives add monster.elekiel_phase_2.skill.4.portal.tp.cd dummy "[怪物] 伊萊克爾二階段 技能4 傳送CD"
scoreboard objectives add monster.elekiel_phase_2.skill.4.portal.tp.id dummy "[怪物] 伊萊克爾二階段 技能4 傳送ID"

scoreboard objectives add mob.main dummy
scoreboard objectives add mob.cd dummy "技能冷卻時間"
scoreboard objectives add mob.duration dummy "技能持續時間"

scoreboard players set #5 mob.main 5
scoreboard players set #10 mob.main 10
scoreboard players set #20 mob.main 20

# ===============================================================================

# 「守魂使徒」西格瑞納

scoreboard objectives add monster.segrina.cd dummy "[怪物] 西格瑞納 CD"

scoreboard objectives add monster.segrina.skill.1.casting dummy "[怪物] 西格瑞納 技能1 施法中"
scoreboard objectives add monster.segrina.skill.2.casting dummy "[怪物] 西格瑞納 技能2 施法中"
scoreboard objectives add monster.segrina.skill.3.casting dummy "[怪物] 西格瑞納 技能3 施法中"
scoreboard objectives add monster.segrina.skill.4.casting dummy "[怪物] 西格瑞納 技能4 施法中"

scoreboard objectives add monster.segrina.skill.1.ball dummy "[怪物] 西格瑞納 技能1 已吸收球數量"
scoreboard objectives add monster.segrina.skill.1.ball.light dummy "[怪物] 西格瑞納 技能1 光球數量"
scoreboard objectives add monster.segrina.skill.1.ball.dark dummy "[怪物] 西格瑞納 技能1 暗球數量"

scoreboard objectives add monster.segrina.skill.1.dmg dummy "[怪物] 西格瑞納 技能1 蓄力"

scoreboard objectives add monster.segrina.skill.1.ball.atk dummy "[怪物] 西格瑞納 技能1 光球攻擊力"
scoreboard objectives add monster.segrina.skill.1.ball.dmg_taken dummy "[怪物] 西格瑞納 技能1 暗球減傷"

scoreboard objectives add monster.segrina.skill.3.timer dummy "[怪物] 西格瑞納 技能3 計時器"
scoreboard objectives add monster.segrina.skill.4.effect dummy "[怪物] 西格瑞納 技能4 負面狀態"
scoreboard objectives add monster.segrina.skill.4.invincible dummy "[怪物] 西格瑞納 技能4 無敵"

# ===============================================================================