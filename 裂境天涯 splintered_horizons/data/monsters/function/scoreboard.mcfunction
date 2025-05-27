
scoreboard objectives add monster.skill.cast.cd dummy "怪物技能目前冷卻"
scoreboard objectives add monster.skill.casting dummy "怪物技能施法中"
scoreboard objectives add monster.skill.rdm.skill dummy "隨機放技能"
scoreboard objectives add monster.skill.silence dummy "怪物技能沉默"

scoreboard objectives add global.monsters.health dummy
scoreboard objectives add particle dummy

# ===============================================================================

# 「破碎之月」拉爾西斯

scoreboard objectives add monster.broken_moon.1.count dummy "[破碎之月] 1技能段數"

scoreboard objectives add monster.broken_moon.skill.1.cd dummy "[破碎之月] 1技能CD"
scoreboard objectives add monster.broken_moon.skill.1.casting dummy "[破碎之月] 1技能施法中"

scoreboard objectives add monster.broken_moon.skill.3.cd dummy "[破碎之月] 3技能CD"
scoreboard objectives add monster.broken_moon.skill.3.casting dummy "[破碎之月] 3技能施法中"

scoreboard objectives add monster.broken_moon.skill.3.player_timer dummy "[破碎之月] 3技能玩家計時器"
scoreboard objectives add monster.broken_moon.skill.3.count dummy "[破碎之月] 3技能次數"
scoreboard objectives add monster.broken_moon.skill.3.player_sun dummy "[破碎之月] 3技能玩家是否有太陽"

scoreboard objectives add monster.broken_moon.skill.4.player_timer dummy "[破碎之月] 4技能玩家計時器"
scoreboard objectives add monster.broken_moon.skill.4.cd dummy "[破碎之月] 4技能CD"
scoreboard objectives add monster.broken_moon.skill.4.casting dummy "[破碎之月] 4技能施法中"

# ===============================================================================

# 深淵斷魂者

scoreboard objectives add monster.abyss_soulcutter dummy "深淵斷魂者血量"
scoreboard objectives add monster.abyss_soulcutter.state_machine.state dummy "深淵斷魂者狀態機行為"
scoreboard objectives add monster.abyss_soulcutter.state_machine.action dummy "深淵斷魂者狀態機運行"
scoreboard objectives add monster.abyss_soulcutter.state_machine.back dummy "深淵斷魂者後退"

# ===============================================================================