give @s music_disc_11[item_name=[{"translate": "item.energy_infusion_stone.generic", "color": "#fbff03", "bold": true}],lore=[[{"translate": "item.energy_infusion_stone.cavalryman.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "item.energy_infusion_stone.generic.story.1", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.2", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.3", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.4", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.cavalryman.passive_skills", "color": "#ffaf03", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.cavalryman.passive_skills.1", "color": "#ffffff", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.cavalryman.passive_skills.2", "color": "#ffffff", "italic": false, "with": [{"translate": "attribute.name.movement_speed", "underlined": True, "color": "dark_aqua"}, {"text": "+25%", "underlined": True, "color": "dark_aqua"}]}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.cavalryman.passive_skills.3", "color": "#ffffff", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.cavalryman.passive_skills.4", "color": "#ffffff", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.cavalryman.passive_skills.5", "color": "#ffffff", "italic": false, "with": [{"translate": "attribute.name.movement_speed", "underlined": True, "color": "dark_aqua"}, {"text": "+10%", "underlined": True, "color": "dark_aqua"}]}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.cavalryman.passive_skills.6", "color": "#ffffff", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.cavalryman.passive_skills.7", "color": "#ffffff", "italic": false}], {"text": ""}],item_model="material/energy_infusion_stone/weapon/epic",enchantments={"energy_infusion_stone:skills/weapon/cavalryman":1},enchantment_glint_override=false,custom_data={type:"item",rarity:"epic",id:"weapon_energy_infusion"},tooltip_style="epic",tooltip_display={hidden_components:["unbreakable","jukebox_playable"]},max_stack_size=64] 64

# ==============================
# Translate Keys
# ==============================
# "item.energy_infusion_stone.cavalryman.type" : "注能之石 / 史詩",
# "item.energy_infusion_stone.cavalryman.passive_skills" : "[衝鋒]",
# "item.energy_infusion_stone.cavalryman.passive_skills.1" : "當你保持衝刺超過 2 秒時:",
# "item.energy_infusion_stone.cavalryman.passive_skills.2" : "給予玩家 %1$s%2$s 直至不處於衝刺狀態",
# "item.energy_infusion_stone.cavalryman.passive_skills.3" : "",
# "item.energy_infusion_stone.cavalryman.passive_skills.4" : "當你保持衝刺時命中敵人:",
# "item.energy_infusion_stone.cavalryman.passive_skills.5" : "給予玩家 %1$s %2$s (00:05)",
# "item.energy_infusion_stone.cavalryman.passive_skills.6" : "該效果最多疊加至 30%",
# "item.energy_infusion_stone.cavalryman.passive_skills.7" : "每次命中刷新時間",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['武器注能: 騎兵', "#fbff03", '注能之石 / 史詩'],
#         "story": {
#             'info': ['散落在世界各地的注能之石','不同顏色對應不同類型','可以用於強化武器 / 裝備','但一旦綁定將無法分開'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'energy_infusion_stone.cavalryman',
#             'item_model': '"material/energy_infusion_stone/weapon/epic"',
#             'custom_data': 'type:"item",rarity:"epic",id:"weapon_energy_infusion"',
#             'enchantments': ['energy_infusion_stone:skills/weapon/cavalryman:1'],
#             'max_stack_size': 64,
#             'other': [
#                 'tooltip_style="epic"',
#                 'tooltip_display={hidden_components:["unbreakable","jukebox_playable"]}'
#             ]
#         },
#         "skill": {
#             'is_skill': False,
#             'name': ['', "#ff0000", '#ffffff'],
#             'info': []
#         },
#         "passive_skills": {
#             'is_passive_skills': True,
#             'name': ['衝鋒', "#ffaf03", '#ffffff'],
#             'info': [
#                 '當你保持衝刺超過 2 秒時:',
#                 {
#                     "text": "給予玩家 %1$s%2$s 直至不處於衝刺狀態",
#                     "with": [
#                         {"translate": "attribute.name.movement_speed", "underlined": True, "color": "dark_aqua"},
#                         {"text": "+25%", "underlined": True, "color": "dark_aqua"}
#                     ]
#                 },
#                 '',
#                 '當你保持衝刺時命中敵人:',
#                 {
#                     "text": "給予玩家 %1$s %2$s (00:05)",
#                     "with": [
#                         {"translate": "attribute.name.movement_speed", "underlined": True, "color": "dark_aqua"},
#                         {"text": "+10%", "underlined": True, "color": "dark_aqua"}
#                     ]
#                 },
#                 '該效果最多疊加至 30%',
#                 '每次命中刷新時間',
#             ]
#         },
#         "attributes": {
#             'is_attributes': False,  # 新增 attributes 標記
#             'name': ['屬性', '#ffffff', '#ffffff'],
#             'info': [
#                 {
#                     "text": "%1$s %2$s (%3$s %2$s)",
#                     "with": [
#                         {"translate": "attribute.name.movement_speed", "underlined": False, "bold":False, "color": "green"},
#                         {"text": "+25%", "underlined": False, "bold":False, "color": "green"},
#                         {"translate": "item.energy_infusion_stone.generic.attributes.level", "underlined": False, "bold":False, "color": "green"}
#                     ]
#                 },
#                 {
#                     "text": "%1$s %2$s (%3$s %2$s)",
#                     "with": [
#                         {"translate": "attribute.name.sneaking_speed", "underlined": False, "bold":False, "color": "green"},
#                         {"text": "+25%", "underlined": False, "bold":False, "color": "green"},
#                         {"translate": "item.energy_infusion_stone.generic.attributes.level", "underlined": False, "bold":False, "color": "green"}
#                     ]
#                 },
#                 {
#                     "text": "%1$s %2$s (%3$s %2$s)",
#                     "with": [
#                         {"translate": "attribute.name.attack_speed", "underlined": False, "bold":False, "color": "green"},
#                         {"text": "+0.25", "underlined": False, "bold":False, "color": "green"},
#                         {"translate": "item.energy_infusion_stone.generic.attributes.level", "underlined": False, "bold":False, "color": "green"}
#                     ]
#                 }
#             ]
#         }
#     }
