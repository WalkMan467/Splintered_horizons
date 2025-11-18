stopsound @a voice minecraft:voice.kill_sword_shoot
stopsound @a voice minecraft:voice.kill_sword_shoot_end

execute as @a[tag=weapon.kill_sword.user] at @s run playsound minecraft:voice.kill_sword_shoot_end voice @a ~ ~1 ~ 0.5 1
scoreboard players reset #kill_sword_shoot.timer.temp global.main
scoreboard players reset #kill_sword_shoot.timer global.main

tag @a remove weapon.kill_sword.user