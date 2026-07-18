give @s music_disc_11[item_name=[{"translate": "item.energy_infusion_stone.generic", "color": "#888888", "bold": true}],lore=[[{"translate": "item.energy_infusion_stone.executioner.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "item.energy_infusion_stone.generic.story.1", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.2", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.3", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.4", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.executioner.passive_skills", "color": "#ff0000", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.executioner.passive_skills.1", "color": "#757575", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.executioner.passive_skills.2", "color": "#757575", "italic": false, "with": [{"translate": "item.energy_infusion_stone.executioner.passive_skills.execution", "underlined": True, "italic": False, "color": "#8b0000"}]}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.executioner.passive_skills.3", "color": "#757575", "italic": false, "with": [{"translate": "item.energy_infusion_stone.executioner.passive_skills.execution", "underlined": True, "italic": False, "color": "#8b0000"}]}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.executioner.passive_skills.4", "color": "#757575", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.executioner.passive_skills.5", "color": "#757575", "italic": false, "with": [{"translate": "attribute.name.attack_damage", "underlined": True, "color": "red"}]}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.executioner.passive_skills.6", "color": "#757575", "italic": false, "with": [{"translate": "attribute.name.attack_speed", "underlined": True, "color": "yellow"}, {"text": "%"}]}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.executioner.passive_skills.7", "color": "#757575", "italic": false, "with": [{"translate": "attribute.name.movement_speed", "underlined": True, "color": "dark_aqua"}, {"text": "%"}]}], {"text": ""}],item_model="material/energy_infusion_stone/weapon/epic",enchantments={"energy_infusion_stone:skills/weapon/executioner":1},enchantment_glint_override=false,custom_data={type:"item",rarity:"epic",id:"weapon_energy_infusion"},tooltip_style="epic",tooltip_display={hidden_components:["unbreakable","jukebox_playable"]},max_stack_size=64] 64

# ==============================
# Translate Keys
# ==============================
# "item.energy_infusion_stone.executioner.type" : "注能之石 / 史詩",
# "item.energy_infusion_stone.executioner.passive_skills" : "[處刑]",
# "item.energy_infusion_stone.executioner.passive_skills.1" : "當你連續攻擊同個怪物時:",
# "item.energy_infusion_stone.executioner.passive_skills.2" : "給予你 1 層 %1$s (00:05)",
# "item.energy_infusion_stone.executioner.passive_skills.3" : "每層%1$s可以使你獲得以下效果:",
# "item.energy_infusion_stone.executioner.passive_skills.4" : "",
# "item.energy_infusion_stone.executioner.passive_skills.5" : "%1$s提升 +0.3",
# "item.energy_infusion_stone.executioner.passive_skills.6" : "%1$s提升 +10%2$s",
# "item.energy_infusion_stone.executioner.passive_skills.7" : "%1$s提升 +10%2$s",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['武器注能: 處刑者', "#888888", '注能之石 / 史詩'],
#         "story": {
#             'info': ['散落在世界各地的注能之石','不同顏色對應不同類型','可以用於強化武器 / 裝備','但一旦綁定將無法分開'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'energy_infusion_stone.executioner',
#             'item_model': '"material/energy_infusion_stone/weapon/epic"',
#             'custom_data': 'type:"item",rarity:"epic",id:"weapon_energy_infusion"',
#             'enchantments': ['energy_infusion_stone:skills/weapon/executioner:1'],
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
#             'name': ['處刑', "#ff0000", "#757575"],
#             'info': [
#                 '當你連續攻擊同個怪物時:',
#                 {
#                     "text": "給予你 1 層 %1$s (00:05)",
#                     "with": [
#                         {"translate": "item.energy_infusion_stone.executioner.passive_skills.execution", "underlined": True, "italic": False, "color": "#8b0000"}
#                     ]
#                 },
#                 {
#                     "text": "每層%1$s可以使你獲得以下效果:",
#                     "with": [
#                         {"translate": "item.energy_infusion_stone.executioner.passive_skills.execution", "underlined": True, "italic": False, "color": "#8b0000"}
#                     ]
#                 },
#                 "",
#                 {
#                     "text": "%1$s提升 +0.3",
#                     "with": [
#                         {"translate": "attribute.name.attack_damage", "underlined": True, "color": "red"}
#                     ]
#                 },
#                 {
#                     "text": "%1$s提升 +10%2$s",
#                     "with": [
#                         {"translate": "attribute.name.attack_speed", "underlined": True, "color": "yellow"},
#                         {"text":"%"}
#                     ]
#                 },
#                 {
#                     "text": "%1$s提升 +10%2$s",
#                     "with": [
#                         {"translate": "attribute.name.movement_speed", "underlined": True, "color": "dark_aqua"},
#                         {"text":"%"}
#                     ]
#                 }
#             ]
#         },
#         "attributes": {
#             'is_attributes': False,  # 新增 attributes 標記
#             'name': ['屬性', '#ffffff', '#ffffff'],
#             'info': []
#         }
#     }
