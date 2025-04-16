playsound minecraft:block.note_block.hat voice @a ~ ~1 ~ 1 1

function #players:detect/hotbar_switch

advancement revoke @s only hotbar_sound:reset
advancement revoke @s only hotbar_sound:sword
advancement revoke @s only hotbar_sound:item