execute unless score #kill_sword_shoot.timer global.main matches 1.. run function weapons:type/sword/kill_sword/rc/reset

execute if score #kill_sword_shoot.timer global.main matches 1.. run schedule function weapons:type/sword/kill_sword/main 1t