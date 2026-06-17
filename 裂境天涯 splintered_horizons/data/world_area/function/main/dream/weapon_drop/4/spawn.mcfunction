# Interaction = 8fc57dba-bd92-4d14-be3b-00777b95ba05
# Text Display = ee56791f-71e4-4a76-b542-19180e111596
# Item Display = 95791744-2b53-448c-ab79-c9d4d06a5e15

execute \
    in world_area:main/game_lobby run \
summon interaction 1574 61 308 {UUID:[I;-1882882630,-1114485484,-1103429513,2073410053],Tags:["world_area.main.dream.weapon_drop.1.act"],Passengers:[{id:text_display,UUID:[I;-296322785,1910786678,-1253959400,236000662],alignment: "center", background: 0, billboard: "vertical", brightness: {block: 15, sky: 15}, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {"text":"","font":"minecraft:icon"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.5f, 2.5f, 2.5f], translation: [-0.1f, 0.15f, 0.1f]}},{id:"item_display",brightness: {block: 15, sky: 15},UUID:[I;-1787226300,726877324,-1418081836,-798335467],billboard:"vertical",transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.75f, 0.75f, 0.75f], translation: [-0.025f, 0.55f, 0.0f]}, item: {count: 1 ,id: "minecraft:apple"}}]}