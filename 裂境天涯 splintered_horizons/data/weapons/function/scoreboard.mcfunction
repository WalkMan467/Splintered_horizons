# 其他

scoreboard objectives add weapon.eye_of_the_end.interval dummy "終焉之眼使用間隔"

scoreboard players add @a weapon.eye_of_the_end.interval 0
#===================================================================
#風力劍

scoreboard objectives add weapon.wind_sword.cd dummy "風力劍CD"
scoreboard objectives add weapon.wind_sword.timer dummy "風力劍使用時間"

scoreboard players add @a weapon.wind_sword.cd 0
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

scoreboard players add @a weapon.ruins_of_the_finality.cd 0

#===================================================================
#鉤子

scoreboard objectives add weapon.hook.effect.id dummy "鉤子流水ID"
scoreboard objectives add weapon.hook.user.id dummy "鉤子投擲者流水ID"

#===================================================================
# 晨光

scoreboard objectives add weapon.morning_light.motion dummy "晨光 Motion"
scoreboard objectives add weapon.morning_light.cd dummy "晨光 cd"
