scoreboard players remove @a[scores={weapon.wind_sword.cd=1..}] weapon.wind_sword.cd 1
scoreboard players remove @a[scores={weapon.twilight_wind.cd=1..}] weapon.twilight_wind.cd 1
scoreboard players remove @a[scores={weapon.grip_of_withering.effect=1..}] weapon.grip_of_withering.effect 1
scoreboard players remove @a[scores={weapon.ruins_of_the_finality.cd=1..}] weapon.ruins_of_the_finality.cd 1
scoreboard players remove @a[scores={weapon.nightfall.cd=1..}] weapon.nightfall.cd 1
scoreboard players remove @a[scores={weapon.aquilumera.cd=1..}] weapon.aquilumera.cd 1
scoreboard players remove @a[scores={weapon.echo_rhythm.cd=1..}] weapon.echo_rhythm.cd 1
scoreboard players remove @a[scores={weapon.morphing_beast.cd=1..}] weapon.morphing_beast.cd 1
scoreboard players remove @a[scores={weapon.spider.cd=1..}] weapon.spider.cd 1
scoreboard players remove @a[scores={weapon.morning_light.cd=1..}] weapon.morning_light.cd 1
scoreboard players remove @a[scores={weapon.morning_light.monster.armor.timer=1..}] weapon.morning_light.monster.armor.timer 1
scoreboard players remove @a[scores={weapon.ruins_of_the_finality.effect.cd=1..}] weapon.ruins_of_the_finality.effect.cd 1
scoreboard players remove @a[scores={weapon.flame_of_abyss.cd=1..}] weapon.flame_of_abyss.cd 1
scoreboard players remove @a[scores={weapon.flame_of_abyss.effect.cd=1..}] weapon.flame_of_abyss.effect.cd 1

# # 風力劍
# tellraw @a[scores={weapon.wind_sword.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.wind_sword","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
# playsound minecraft:entity.player.levelup voice @a[scores={weapon.wind_sword.cd=1}] ~ ~1 ~ 1 1.5
# scoreboard players set @a[scores={weapon.wind_sword.cd=1}] weapon.wind_sword.cd 0

# # 終焉之墟
# tellraw @a[scores={weapon.ruins_of_the_finality.cd=1,player.ultimate=0..1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.ruins_of_the_finality","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
# playsound minecraft:entity.player.levelup voice @a[scores={weapon.ruins_of_the_finality.cd=1,player.ultimate=0..1}] ~ ~1 ~ 1 1.5
# scoreboard players set @a[scores={weapon.ruins_of_the_finality.cd=1}] weapon.ruins_of_the_finality.cd 0

# # 夜幕
# tellraw @a[scores={weapon.nightfall.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.nightfall","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
# playsound minecraft:entity.player.levelup voice @a[scores={weapon.nightfall.cd=1}] ~ ~1 ~ 1 1.5
# scoreboard players set @a[scores={weapon.nightfall.cd=1}] weapon.nightfall.cd 0

# # 水鏡之光
# tellraw @a[scores={weapon.aquilumera.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.aquilumera","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
# playsound minecraft:entity.player.levelup voice @a[scores={weapon.aquilumera.cd=1}] ~ ~1 ~ 1 1.5
# scoreboard players set @a[scores={weapon.aquilumera.cd=1}] weapon.aquilumera.cd 0

# # 回音律動
# tellraw @a[scores={weapon.echo_rhythm.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.echo_rhythm","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
# playsound minecraft:block.note_block.snare voice @a[scores={weapon.echo_rhythm.cd=1}] ~ ~1 ~ 1 1
# playsound minecraft:block.note_block.snare voice @a[scores={weapon.echo_rhythm.cd=1}] ~ ~1 ~ 1 1
# playsound minecraft:block.note_block.snare voice @a[scores={weapon.echo_rhythm.cd=1}] ~ ~1 ~ 1 1

# scoreboard players set @a[scores={weapon.echo_rhythm.cd=1}] weapon.echo_rhythm.cd 0

advancement grant @a[scores={weapon.grip_of_withering.effect=1}] only weapons:type/sword/grip_of_withering/0