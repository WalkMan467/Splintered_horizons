# 其他

scoreboard objectives add weapon.eye_of_the_end.interval dummy "終焉之眼使用間隔"

scoreboard players add @a weapon.eye_of_the_end.interval 0
#===================================================================
#風力劍

scoreboard objectives add weapon.wind_sword.cd dummy "風力劍CD"
scoreboard objectives add weapon.wind_sword.timer dummy "風力劍使用時間"

scoreboard players add @a weapon.wind_sword.cd 0
scoreboard players add @a weapon.wind_sword.timer 0
#===================================================================
#凋零之握

scoreboard objectives add weapon.grip_of_withering.effect dummy "凋零之握型態持續時間"
scoreboard objectives add weapon.grip_of_withering.cd dummy "凋零之握型態持續時間"

scoreboard players add @a weapon.grip_of_withering.effect 0
scoreboard players add @a weapon.grip_of_withering.cd 0

#===================================================================
#狂風之劍

scoreboard objectives add weapon.storm_sword.ultimate dummy "狂風之劍 大招"

scoreboard players add @a weapon.storm_sword.ultimate 0

#===================================================================
#終焉之墟

scoreboard objectives add weapon.ruins_of_the_finality.effect.range dummy "終焉之墟 技能距離"
scoreboard objectives add weapon.ruins_of_the_finality.effect.time dummy "終焉之墟 技能動畫播放時間"
scoreboard objectives add weapon.ruins_of_the_finality.cd dummy "終焉之墟 CD"
scoreboard objectives add weapon.ruins_of_the_finality.effect.count dummy "終焉之墟 技能數量"
scoreboard objectives add weapon.ruins_of_the_finality.effect.count.delay dummy "終焉之墟 技能延遲"
scoreboard objectives add weapon.ruins_of_the_finality.id dummy "終焉之墟 流水ID"

scoreboard players add @a weapon.ruins_of_the_finality.effect.range 0
scoreboard players add @a weapon.ruins_of_the_finality.effect.time 0
scoreboard players add @a weapon.ruins_of_the_finality.cd 0
scoreboard players add @a weapon.ruins_of_the_finality.effect.count 0
scoreboard players add @a weapon.ruins_of_the_finality.effect.count.delay 0
scoreboard players add @a weapon.ruins_of_the_finality.id 0

#===================================================================
#鉤子

scoreboard objectives add weapon.hook.effect.id dummy "鉤子流水ID"
scoreboard objectives add weapon.hook.user.id dummy "鉤子投擲者流水ID"
scoreboard objectives add weapon.hook.target.id dummy "鉤爪點流水ID"

scoreboard players add @a weapon.hook.effect.id 0
scoreboard players add @a weapon.hook.user.id 0
scoreboard players add @a weapon.hook.target.id 0

#===================================================================
# 晨光

scoreboard objectives add weapon.morning_light.motion dummy "晨光 Motion"
scoreboard objectives add weapon.morning_light.cd dummy "晨光 cd"

scoreboard players add @a weapon.morning_light.motion 0
scoreboard players add @a weapon.morning_light.cd 0

#===================================================================
# 夜幕

scoreboard objectives add weapon.nightfall.state dummy "夜幕狀態"
scoreboard objectives add weapon.nightfall.cd dummy "夜幕 CD"

scoreboard players add @a weapon.nightfall.state 0
scoreboard players add @a weapon.nightfall.cd 0

#===================================================================
# 水鏡之光

scoreboard objectives add weapon.aquilumera_passive dummy "水鏡之光被動"
scoreboard objectives add weapon.aquilumera.state dummy "水鏡之光狀態"
scoreboard objectives add weapon.aquilumera.cd dummy "水鏡之光 CD"

scoreboard players add @a weapon.aquilumera_passive 0
scoreboard players add @a weapon.aquilumera.state 0
scoreboard players add @a weapon.aquilumera.cd 0
#===================================================================
# 武器狀態

scoreboard objectives add weapon.effect.resplendence dummy "輝煌"
scoreboard objectives add weapon.effect.shadow dummy "暗影"

scoreboard players add @a weapon.effect.resplendence 0
scoreboard players add @a weapon.effect.shadow 0

#===================================================================
