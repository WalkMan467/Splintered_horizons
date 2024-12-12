scoreboard players set @a task.reset 1
scoreboard players reset @a task.cracked.decorated_pot

tellraw @a ["",{"text":"[任務]: ","color":"gold"},{"text":"擊碎30個罐子","underlined":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"[獎勵]: 30個綠寶石","bold":true,"color":"dark_green"}]}}]