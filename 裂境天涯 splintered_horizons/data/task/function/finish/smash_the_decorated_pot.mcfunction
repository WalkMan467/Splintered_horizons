scoreboard players set @s task.reset 0
playsound minecraft:block.chest.open voice @s ~ ~1 ~ 1 1
playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 1

tellraw @s ["","\n",{"text":"[任務]: ","color":"gold"},{"text":"擊碎30個罐子","color":"gold"},{"text":" 完成","color":"dark_green"},"\n",{"text":"====================","color":"gold"},"\n","\n",{"text":"獎勵: 30個綠寶石","color":"dark_green"},"\n",{"text":"====================","color":"gold"}]