scoreboard players set #story.opening.7_temp global.main 1
scoreboard players set story.opening.7 story.chapter_1 1


# 4a38d84b-fffb-4be9-b828-fe41c7c7750b
execute \
    in world_area:main/game_lobby \
    positioned 16683.00 60.00 238.90 \
    rotated 0 0 run \
summon interaction ~ ~ ~ {width:4,height:6,Tags:["story.opening.7.act"],UUID:[I;1245239371,-308247,-1205273023,-943229685]}

execute \
    in world_area:main/game_lobby \
    positioned 16683 59 236 run \
tellraw @a[distance=..16] {"translate":"tips.npc_interaction.2","with":[{"keybind":"key.use","color":"dark_green","underlined":true}]}

# FX & SFX
playsound minecraft:item.trident.return voice @a 16683.00 60.00 238.90 1 1.5