scoreboard players set @s player.actionbar.beginner_tutorial.failure 40

execute \
    as @n[sort=arbitrary,distance=..8,tag=temp,type=interaction] at @s run \
playsound minecraft:block.vault.insert_item_fail voice @a ~ ~0.5 ~ 1 1

execute \
    as @n[sort=arbitrary,distance=..8,tag=temp,type=interaction] at @s run \
playsound minecraft:block.vault.insert_item_fail voice @a ~ ~0.5 ~ 1 1

execute \
    as @n[sort=arbitrary,distance=..8,tag=temp,type=interaction] at @s run \
particle dust_color_transition{from_color: [1.0f, 0.0f, 0.0f], scale: 1.5f, to_color: [0.75f, 0.0f, 0.0f]} ~ ~0.5 ~ 0.5 0.5 0.5 0 10 normal @a

execute \
    as @n[sort=arbitrary,distance=..8,tag=temp,type=interaction] at @s run \
playsound minecraft:block.note_block.didgeridoo voice @a ~ ~0.5 ~ 1 1

execute \
    as @n[sort=arbitrary,distance=..8,tag=temp,type=interaction] at @s run \
playsound minecraft:block.note_block.didgeridoo voice @a ~ ~0.5 ~ 1 1