playsound minecraft:hotbar.switch_item voice @a ~ ~1 ~ 1 1

function #weapons:toggle_detection

advancement revoke @s only hotbar_sound:reset
advancement revoke @s only hotbar_sound:sword
advancement revoke @s only hotbar_sound:tool