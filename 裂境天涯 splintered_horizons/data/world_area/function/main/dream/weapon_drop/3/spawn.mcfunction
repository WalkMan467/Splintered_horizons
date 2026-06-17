# Interaction = 5fe07430-8718-4e82-8d89-16ea88c95586
# Text Display = 5c298c7e-c935-4af9-adfb-7aae0cf35d8b
# Item Display = f5f13b7a-874f-4a59-8819-b3b743e2eed2

execute \
    in world_area:main/game_lobby run \
summon interaction 1574 61 310 {UUID:[I;1608545328,-2028450174,-1920395542,-2000071290],Tags:["world_area.main.dream.weapon_drop.1.act"],Passengers:[{id:text_display,UUID:[I;1546226814,-919254279,-1376027986,217275787],alignment: "center", background: 0, billboard: "vertical", brightness: {block: 15, sky: 15}, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {"text":"","font":"minecraft:icon"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.5f, 2.5f, 2.5f], translation: [-0.1f, 0.15f, 0.1f]}},{id:"item_display",brightness: {block: 15, sky: 15},UUID:[I;-168739974,-2024846759,-2011581513,1138945746],billboard:"vertical",transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.75f, 0.75f, 0.75f], translation: [-0.025f, 0.55f, 0.0f]}, item: {count: 1,components:{enchantments:{efficiency:2}} ,id: "minecraft:stone_pickaxe"}}]}