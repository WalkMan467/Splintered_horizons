kill @e[tag=weapon.ruins_of_the_end.effect.chain]

playsound minecraft:block.beacon.deactivate voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.vault.open_shutter voice @a ~ ~1 ~ 1 0
playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~ ~ 1 0.75
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 0.75 0.75

# 調用一下 Raycast 取目的地的座標
scoreboard players set #temp weapon.ruins_of_the_end.effect.range 25

execute positioned ^ ^1.5 ^ run function weapons:type/sickle/ruins_of_the_end/rc/point/raycast

# 開始生成鎖鏈
execute positioned ^1 ^1.5 ^ run function weapons:type/sickle/ruins_of_the_end/rc/chain/raycast
execute positioned ^-1 ^1.5 ^ run function weapons:type/sickle/ruins_of_the_end/rc/chain/raycast
execute positioned ^1 ^1 ^ run function weapons:type/sickle/ruins_of_the_end/rc/chain/raycast
execute positioned ^-1 ^1 ^ run function weapons:type/sickle/ruins_of_the_end/rc/chain/raycast