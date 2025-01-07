
scoreboard objectives add monster.skill.cast.cd dummy "怪物技能目前冷卻"
scoreboard objectives add monster.skill.casting dummy "怪物技能施法中"
scoreboard objectives add monster.skill.rdm.skill dummy "隨機放技能"
scoreboard objectives add global.monsters.health dummy
scoreboard objectives add particle dummy

# ----- 特殊Boss記分板 ----- #
# 取名方式 : [怪物名稱].move[技能id] / movep = 被動的意思(passive)

# WalkMan467
scoreboard objectives add chapter_1.walkman.1 dummy "WalkMan 瞬移技能"
scoreboard objectives add chapter_1.walkman.1_count dummy "WalkMan 瞬移技能次數"
scoreboard objectives add chapter_1.walkman.2.charge dummy "WalkMan 技能3 蓄力"
scoreboard objectives add chapter_1.walkman.4.clock dummy "WalkMan 技能4 時空之鐘"