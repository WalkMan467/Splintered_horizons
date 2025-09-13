scoreboard players remove @s[scores={weapon.wind_sword.cd=1..}] weapon.wind_sword.cd 1
scoreboard players remove @s[scores={weapon.twilight_wind.cd=1..}] weapon.twilight_wind.cd 1
scoreboard players remove @s[scores={weapon.grip_of_withering.effect=1..}] weapon.grip_of_withering.effect 1
scoreboard players remove @s[scores={weapon.ruins_of_the_finality.cd=1..}] weapon.ruins_of_the_finality.cd 1
scoreboard players remove @s[scores={weapon.nightfall.cd=1..}] weapon.nightfall.cd 1
scoreboard players remove @s[scores={weapon.aquilumera.cd=1..}] weapon.aquilumera.cd 1
scoreboard players remove @s[scores={weapon.echo_rhythm.cd=1..}] weapon.echo_rhythm.cd 1
scoreboard players remove @s[scores={weapon.morphing_beast.cd=1..}] weapon.morphing_beast.cd 1
scoreboard players remove @s[scores={weapon.spider.cd=1..}] weapon.spider.cd 1
scoreboard players remove @s[scores={weapon.morning_light.cd=1..}] weapon.morning_light.cd 1
scoreboard players remove @s[scores={weapon.morning_light.monster.armor.timer=1..}] weapon.morning_light.monster.armor.timer 1

# # 風力劍
# tellraw @s[scores={weapon.wind_sword.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.wind_sword","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
# playsound minecraft:entity.player.levelup voice @s[scores={weapon.wind_sword.cd=1}] ~ ~1 ~ 1 1.5
# scoreboard players set @s[scores={weapon.wind_sword.cd=1}] weapon.wind_sword.cd 0

# # 終焉之墟
# tellraw @s[scores={weapon.ruins_of_the_finality.cd=1,player.ultimate=0..1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.ruins_of_the_finality","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
# playsound minecraft:entity.player.levelup voice @s[scores={weapon.ruins_of_the_finality.cd=1,player.ultimate=0..1}] ~ ~1 ~ 1 1.5
# scoreboard players set @s[scores={weapon.ruins_of_the_finality.cd=1}] weapon.ruins_of_the_finality.cd 0

# # 夜幕
# tellraw @s[scores={weapon.nightfall.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.nightfall","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
# playsound minecraft:entity.player.levelup voice @s[scores={weapon.nightfall.cd=1}] ~ ~1 ~ 1 1.5
# scoreboard players set @s[scores={weapon.nightfall.cd=1}] weapon.nightfall.cd 0

# # 水鏡之光
# tellraw @s[scores={weapon.aquilumera.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.aquilumera","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
# playsound minecraft:entity.player.levelup voice @s[scores={weapon.aquilumera.cd=1}] ~ ~1 ~ 1 1.5
# scoreboard players set @s[scores={weapon.aquilumera.cd=1}] weapon.aquilumera.cd 0

# # 回音律動
# tellraw @s[scores={weapon.echo_rhythm.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.echo_rhythm","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
# playsound minecraft:block.note_block.snare voice @s[scores={weapon.echo_rhythm.cd=1}] ~ ~1 ~ 1 1
# playsound minecraft:block.note_block.snare voice @s[scores={weapon.echo_rhythm.cd=1}] ~ ~1 ~ 1 1
# playsound minecraft:block.note_block.snare voice @s[scores={weapon.echo_rhythm.cd=1}] ~ ~1 ~ 1 1

# scoreboard players set @s[scores={weapon.echo_rhythm.cd=1}] weapon.echo_rhythm.cd 0

advancement grant @s[scores={weapon.grip_of_withering.effect=1}] only weapons:type/sword/grip_of_withering/0