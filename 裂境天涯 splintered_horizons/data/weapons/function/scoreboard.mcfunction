# 其他

scoreboard objectives add weapon.cd.math dummy "CD 冷卻換算"
scoreboard objectives add weapon.ultimate.cd.math dummy "終焉技 CD 冷卻換算"

#===================================================================
#風力劍

scoreboard objectives add weapon.wind_sword.cd dummy "風力劍CD"
scoreboard objectives add weapon.wind_sword.timer dummy "風力劍使用時間"

scoreboard players add @a weapon.wind_sword.cd 0
scoreboard players add @a weapon.wind_sword.timer 0
#===================================================================
#暮光之風

scoreboard objectives add weapon.twilight_wind.cd dummy "暮光之風CD"
scoreboard objectives add weapon.twilight_wind.timer dummy "暮光之風使用時間"
scoreboard objectives add weapon.twilight_wind.gale_energy dummy "暮光之風颶風能量"

scoreboard players add @a weapon.twilight_wind.cd 0
scoreboard players add @a weapon.twilight_wind.timer 0
scoreboard players add @a weapon.twilight_wind.gale_energy 0

#===================================================================

#凋零之握

scoreboard objectives add weapon.grip_of_withering.cd dummy "凋零之握 CD"
scoreboard objectives add weapon.grip_of_withering.passive.chance dummy "凋零之握 被動觸發機率"

scoreboard players add @a weapon.grip_of_withering.cd 0

#===================================================================

#雷霆二重奏

scoreboard objectives add weapon.thunder_duet.cd dummy "雷霆二重奏 CD"
scoreboard objectives add weapon.thunder_duet.passive.cd dummy "雷霆二重奏 被動 CD"
scoreboard objectives add weapon.thunder_duet.passive.state dummy "雷霆二重奏 被動 狀態"
scoreboard objectives add weapon.thunder_duet.passive.timer dummy "雷霆二重奏 被動 觸發計時器"
scoreboard objectives add weapon.thunder_duet.target.marker dummy "雷霆二重奏 閃電標記持續時間"

scoreboard objectives add weapon.thunder_duet.target.delay dummy "雷霆二重奏 標記延遲"
scoreboard objectives add weapon.thunder_duet.id dummy "雷霆二重奏 ID"

scoreboard players add @a weapon.thunder_duet.cd 0
scoreboard players add @a weapon.thunder_duet.passive.cd 0

#===================================================================

#異界晨星

scoreboard objectives add weapon.otherworld_star.cd dummy "異界晨星 CD"
scoreboard objectives add weapon.otherworld_star.timer dummy "異界晨星 行星墜落計時器"
scoreboard objectives add weapon.otherworld_star.effect dummy "異界晨星 行星墜落層數"

scoreboard players add @a weapon.otherworld_star.cd 0

#===================================================================

#地震之斧

scoreboard objectives add weapon.earthquake_axe.cd dummy "地震之斧CD"
scoreboard objectives add weapon.earthquake_axe.user.id dummy "地震之斧使用者 ID"
scoreboard objectives add weapon.earthquake_axe.animation dummy "地震之斧動畫時長"
scoreboard objectives add weapon.earthquake_axe.hit.sfx dummy "地震之斧命中音效"
scoreboard objectives add weapon.earthquake_axe.effect.cd dummy "地震之斧 被動 CD"

scoreboard players add @a weapon.earthquake_axe.cd 0
scoreboard players add @a weapon.earthquake_axe.animation 0
scoreboard players add @a weapon.earthquake_axe.effect.cd 0

#===================================================================
#碎岩大劍

scoreboard objectives add weapon.rock_crushing_greatsword.cd dummy "碎岩大劍CD"
scoreboard objectives add weapon.rock_crushing_greatsword.hold_down dummy "碎岩大劍 長按"
scoreboard objectives add weapon.rock_crushing_greatsword.use dummy "碎岩大劍 使用"

scoreboard players add @a weapon.rock_crushing_greatsword.cd 0

#===================================================================

#宙斯閃電

scoreboard objectives add weapon.zeuss_lightning.hold_down dummy "宙斯閃電 長按"
scoreboard objectives add weapon.zeuss_lightning.use dummy "宙斯閃電 使用"

scoreboard players add @s weapon.zeuss_lightning.hold_down 0
scoreboard players add @s weapon.zeuss_lightning.use 0

#===================================================================
#虛空碎裂風暴複合弓

scoreboard objectives add weapon.ethereal_shatterstorm_compound_bow.hold_down dummy "虛空碎裂風暴複合弓 長按"
scoreboard objectives add weapon.ethereal_shatterstorm_compound_bow.use dummy "虛空碎裂風暴複合弓 使用"

scoreboard players add @s weapon.ethereal_shatterstorm_compound_bow.hold_down 0
scoreboard players add @s weapon.ethereal_shatterstorm_compound_bow.use 0

#===================================================================
#射手座

scoreboard objectives add weapon.sagittarius.hold_down dummy "射手座 長按"
scoreboard objectives add weapon.sagittarius.use dummy "射手座 使用"
scoreboard objectives add weapon.sagittarius.cd dummy "射手座 CD"
scoreboard objectives add weapon.sagittarius.charged.sfx dummy "射手座 蓄力完成音效"

scoreboard players add @s weapon.sagittarius.hold_down 0
scoreboard players add @s weapon.sagittarius.use 0
scoreboard players add @s weapon.sagittarius.cd 0
scoreboard players add @s weapon.sagittarius.charged.sfx 0

#===================================================================
#天導神弓

scoreboard objectives add weapon.heavenly_guiding_bow.hold_down dummy "天導神弓 長按"
scoreboard objectives add weapon.heavenly_guiding_bow.use dummy "天導神弓 使用"
scoreboard objectives add weapon.heavenly_guiding_bow.cd dummy "天導神弓 CD"

scoreboard objectives add weapon.heavenly_guiding_bow.arrow.time dummy "天導神弓 箭矢持續時間 CD"
scoreboard objectives add weapon.heavenly_guiding_bow.arrow.id dummy "天導神弓 箭矢 ID"
scoreboard objectives add weapon.heavenly_guiding_bow.arrow.count dummy "天導神弓 箭矢 連射次數"

scoreboard players add @s weapon.heavenly_guiding_bow.hold_down 0
scoreboard players add @s weapon.heavenly_guiding_bow.use 0
scoreboard players add @s weapon.heavenly_guiding_bow.cd 0

#===================================================================

#蜘蛛

scoreboard objectives add weapon.spider.cd dummy "蜘蛛 CD"
scoreboard objectives add weapon.spider_passive dummy "蜘蛛 被動層數"
scoreboard objectives add weapon.spider_passive_dot dummy "蜘蛛 被動DOT"

scoreboard players add @a weapon.spider.cd 0
scoreboard players add @a weapon.spider_passive 0
scoreboard players set global weapon.spider_passive_dot 5


#===================================================================
# 深淵之火

scoreboard objectives add weapon.flame_of_abyss.cd dummy "深淵之火 CD"
scoreboard objectives add weapon.flame_of_abyss.effect dummy "深淵之火 惡咒"
scoreboard objectives add weapon.flame_of_abyss.effect.cd dummy "深淵之火 惡咒 CD"

scoreboard players add @a weapon.flame_of_abyss.cd 0
scoreboard players add @a weapon.flame_of_abyss.effect 0
scoreboard players add @a weapon.flame_of_abyss.effect.cd 0

#===================================================================
# 終焉之火

scoreboard objectives add weapon.flame_of_finality.cd dummy "終焉之火 CD"
scoreboard objectives add weapon.flame_of_finality.attack dummy "終焉之火 攻擊"
scoreboard objectives add weapon.flame_of_finality.attack.timer dummy "終焉之火 攻擊計時器"
scoreboard objectives add weapon.flame_of_finality.flower.id dummy "終焉之火 花ID"

scoreboard players add @a weapon.flame_of_finality.cd 0
scoreboard players add @a weapon.flame_of_finality.attack.timer 0
scoreboard players add @a weapon.flame_of_finality.flower.id 0

#===================================================================

#終焉之墟

scoreboard objectives add weapon.ruins_of_the_finality.effect.range dummy "終焉之墟 技能距離"
scoreboard objectives add weapon.ruins_of_the_finality.effect.time dummy "終焉之墟 技能動畫播放時間"
scoreboard objectives add weapon.ruins_of_the_finality.cd dummy "終焉之墟 CD"
scoreboard objectives add weapon.ruins_of_the_finality.effect.count dummy "終焉之墟 技能數量"
scoreboard objectives add weapon.ruins_of_the_finality.effect.count.delay dummy "終焉之墟 技能延遲"
scoreboard objectives add weapon.ruins_of_the_finality.id dummy "終焉之墟 流水ID"
scoreboard objectives add weapon.ruins_of_the_finality.enhanced_finality_skill dummy "終焉之墟 強化終焉技持續時間"
scoreboard objectives add weapon.ruins_of_the_finality.effect dummy "終焉之墟 被動層數"
scoreboard objectives add weapon.ruins_of_the_finality.effect.cd dummy "終焉之墟 被動 CD"
scoreboard objectives add weapon.ruins_of_the_finality.effect.detect dummy "終焉之墟 被動 偵測"

scoreboard objectives add weapon.ruins_of_the_finality.blade.timer dummy "終焉之墟 斬擊計時器"
scoreboard objectives add weapon.ruins_of_the_finality.blade.id dummy "終焉之墟 斬擊流水ID"
scoreboard objectives add weapon.ruins_of_the_finality.blade.state dummy "終焉之墟 斬擊狀態"
scoreboard objectives add weapon.ruins_of_the_finality.blade.animation dummy "終焉之墟 斬擊動畫狀態"

scoreboard players add @a weapon.ruins_of_the_finality.effect.range 0
scoreboard players add @a weapon.ruins_of_the_finality.effect.time 0
scoreboard players add @a weapon.ruins_of_the_finality.cd 0
scoreboard players add @a weapon.ruins_of_the_finality.effect.count 0
scoreboard players add @a weapon.ruins_of_the_finality.effect.count.delay 0
scoreboard players add @a weapon.ruins_of_the_finality.id 0
scoreboard players add @a weapon.ruins_of_the_finality.enhanced_finality_skill 0
scoreboard players add @a weapon.ruins_of_the_finality.effect 0

#===================================================================
#鉤子

scoreboard objectives add weapon.hook.effect.id dummy "鉤子流水ID"
scoreboard objectives add weapon.hook.user.id dummy "鉤子投擲者流水ID"
scoreboard objectives add weapon.hook.target.id dummy "鉤爪點流水ID"

scoreboard players add @a weapon.hook.effect.id 0
scoreboard players add @a weapon.hook.user.id 0
scoreboard players add @a weapon.hook.target.id 0
scoreboard players add @a weapon.ruins_of_the_finality.effect.detect 0

#===================================================================
# 晨光

scoreboard objectives add weapon.morning_light.cd dummy "晨光 cd"
scoreboard objectives add weapon.morning_light.monster.armor.timer dummy "晨光 怪物減防 cd"
scoreboard objectives add weapon.morning_light.monster.armor.state dummy "晨光 怪物減防 cd層數"

scoreboard players add @a weapon.morning_light.cd 0
scoreboard players add @a weapon.morning_light.monster.armor.timer 0
scoreboard players add @a weapon.morning_light.monster.armor.state 0

#===================================================================
# 夜幕

scoreboard objectives add weapon.nightfall.state dummy "夜幕狀態"
scoreboard objectives add weapon.nightfall.cd dummy "夜幕 CD"
scoreboard objectives add weapon.nightfall.charge dummy "夜幕充能"
scoreboard objectives add weapon.nightfall.charge_timer dummy "夜幕充能特效"
scoreboard objectives add weapon.nightfall.effect.switch_dmg_count dummy "夜幕切換傷害次數"

scoreboard players add @a weapon.nightfall.state 0
scoreboard players add @a weapon.nightfall.cd 0
scoreboard players add @a weapon.nightfall.effect.switch_dmg_count 0

#===================================================================
# 水鏡之光

scoreboard objectives add weapon.aquilumera_passive dummy "水鏡之光被動"
scoreboard objectives add weapon.aquilumera.state dummy "水鏡之光狀態"
scoreboard objectives add weapon.aquilumera.cd dummy "水鏡之光 CD"
scoreboard objectives add weapon.aquilumera.count dummy "水鏡之光 數量"

scoreboard players add @a weapon.aquilumera_passive 0
scoreboard players add @a weapon.aquilumera.state 0
scoreboard players add @a weapon.aquilumera.cd 0
#===================================================================
# 回聲律動

scoreboard objectives add weapon.echo_rhythm.cd dummy "回聲律動 CD"

scoreboard players add @a weapon.echo_rhythm.cd 0
#===================================================================
# 變形異獸

scoreboard objectives add weapon.morphing_beast.state dummy "變形異獸狀態"
scoreboard objectives add weapon.morphing_beast.cd dummy "變形異獸 CD"

scoreboard players add @a weapon.morphing_beast.state 0
scoreboard players add @a weapon.morphing_beast.cd 0

#===================================================================


# 武器狀態

scoreboard objectives add weapon.effect.resplendence dummy "輝煌之光"
scoreboard objectives add weapon.effect.shadow dummy "至深之暗"
scoreboard objectives add weapon.effect.chaotic_thunder dummy "渾沌之雷"
scoreboard objectives add weapon.effect.crimson_claw dummy "緋紅之爪"
scoreboard objectives add weapon.effect.holy_fire dummy "神聖之火"
scoreboard objectives add weapon.effect.starry_sky_frost dummy "星空之霜"

scoreboard players add @a weapon.effect.resplendence 0
scoreboard players add @a weapon.effect.shadow 0
scoreboard players add @a weapon.effect.chaotic_thunder 0
scoreboard players add @a weapon.effect.crimson_claw 0
scoreboard players add @a weapon.effect.holy_fire 0
scoreboard players add @a weapon.effect.starry_sky_frost 0

#===================================================================
# 注能附魔

scoreboard objectives add weapon.enchantment.bleeding_hit.cd dummy "流血打擊 cd"
scoreboard objectives add weapon.enchantment.phantom_fangs dummy "幻影爪"

scoreboard players add @a weapon.enchantment.bleeding_hit.cd 0

#===================================================================
