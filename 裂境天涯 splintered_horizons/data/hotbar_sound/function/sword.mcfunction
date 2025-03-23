playsound minecraft:hotbar.switch_sword voice @a ~ ~1 ~ 0.25 1

function #weapons:toggle_detection

advancement revoke @s only hotbar_sound:reset
advancement revoke @s only hotbar_sound:item
advancement revoke @s only hotbar_sound:tool