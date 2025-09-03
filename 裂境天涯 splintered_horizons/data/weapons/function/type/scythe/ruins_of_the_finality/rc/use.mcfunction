scoreboard players add @s player.ultimate 0
execute unless score @s player.ultimate matches ..0 run function weapons:ultimate_use_failed
execute unless score @s player.ultimate matches ..0 run return 0

scoreboard players set @s player.click.interval 20

execute unless score @s weapon.ruins_of_the_finality.blade.state matches 2.. run scoreboard players add @s weapon.ruins_of_the_finality.blade.state 1

tellraw @s [{"translate":"weapon.ruins_of_the_finality.skill","color":"dark_green","bold":true}," ",{"translate":"weapon.skill_activation","color":"green","bold":true}]


scoreboard players set @s[scores={player.ultimate=..0}] player.ultimate 1

execute if score @s weapon.ruins_of_the_finality.blade.state matches 1 run tag @s add weapon.ruins_of_the_finality.blade.1.user
execute if score @s weapon.ruins_of_the_finality.blade.state matches 1 run scoreboard players set #temp weapon.ruins_of_the_finality.effect.range 25
execute if score @s weapon.ruins_of_the_finality.blade.state matches 1 run scoreboard players set @s player.animation.lock 10
execute if score @s weapon.ruins_of_the_finality.blade.state matches 1 run execute positioned ~ ~1.5 ~ run function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/raycast


execute if score @s weapon.ruins_of_the_finality.blade.state matches 2 run function weapons:type/scythe/ruins_of_the_finality/rc/animation/2/use
execute if score @s weapon.ruins_of_the_finality.blade.state matches 2 run scoreboard players set @s weapon.ruins_of_the_finality.blade.state 0

# scoreboard players set @s weapon.ruins_of_the_finality.effect.time 41
# scoreboard players set @s weapon.ruins_of_the_finality.cd 60

# function weapons:type/scythe/ruins_of_the_finality/main

# kill @e[tag=weapon.ruins_of_the_finality.effect.chain]

# stopsound @a voice minecraft:block.beacon.deactivate
# stopsound @a voice minecraft:block.vault.open_shutter
# stopsound @a voice minecraft:entity.illusioner.prepare_blindness
# stopsound @a voice minecraft:entity.illusioner.cast_spell
# stopsound @a voice minecraft:block.respawn_anchor.deplete
# stopsound @a voice minecraft:entity.warden.sonic_boom

# playsound minecraft:block.beacon.deactivate voice @a ~ ~1 ~ 1 0.75
# playsound minecraft:block.vault.open_shutter voice @a ~ ~1 ~ 1 0
# playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~ ~ 1 0.75
# playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
# playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
# playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1
# playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 0.75 0.75

# # 調用一下 Raycast 取目的地的座標
# scoreboard players set #temp weapon.ruins_of_the_finality.effect.range 25

# execute positioned ^ ^1.5 ^ run function weapons:type/scythe/ruins_of_the_finality/rc/point/raycast

# # 開始生成鎖鏈
# execute positioned ^1 ^1.5 ^ run function weapons:type/scythe/ruins_of_the_finality/rc/chain/raycast
# execute positioned ^-1 ^1.5 ^ run function weapons:type/scythe/ruins_of_the_finality/rc/chain/raycast
# execute positioned ^1 ^1 ^ run function weapons:type/scythe/ruins_of_the_finality/rc/chain/raycast
# execute positioned ^-1 ^1 ^ run function weapons:type/scythe/ruins_of_the_finality/rc/chain/raycast