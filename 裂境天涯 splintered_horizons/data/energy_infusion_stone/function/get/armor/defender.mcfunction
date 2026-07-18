give @s music_disc_11[item_name=[{"translate": "item.energy_infusion_stone.generic", "color": "#01ffc0", "bold": true}],lore=[[{"translate": "item.energy_infusion_stone.defender.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "item.energy_infusion_stone.generic.story.1", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.2", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.3", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.4", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills", "color": "#0090b4", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills.1", "color": "#489985", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills.2", "color": "#489985", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills.3", "color": "#489985", "italic": false}], {"text": ""}],item_model="material/energy_infusion_stone/armor/epic",enchantments={"energy_infusion_stone:skills/armor/defender":1},enchantment_glint_override=false,custom_data={type:"item",rarity:"epic",id:"armor_energy_infusion"},tooltip_style="epic",tooltip_display={hidden_components:["unbreakable","jukebox_playable"]},max_stack_size=64] 64
give @s music_disc_11[item_name=[{"translate": "item.energy_infusion_stone.generic", "color": "#01ffc0", "bold": true}],lore=[[{"translate": "item.energy_infusion_stone.defender.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "item.energy_infusion_stone.generic.story.1", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.2", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.3", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.4", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills", "color": "#0090b4", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills.1", "color": "#489985", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills.2", "color": "#489985", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills.3", "color": "#489985", "italic": false}], {"text": ""}],item_model="material/energy_infusion_stone/armor/epic",enchantments={"energy_infusion_stone:skills/armor/defender":2},enchantment_glint_override=false,custom_data={type:"item",rarity:"epic",id:"armor_energy_infusion"},tooltip_style="epic",tooltip_display={hidden_components:["unbreakable","jukebox_playable"]},max_stack_size=64] 64
give @s music_disc_11[item_name=[{"translate": "item.energy_infusion_stone.generic", "color": "#01ffc0", "bold": true}],lore=[[{"translate": "item.energy_infusion_stone.defender.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "item.energy_infusion_stone.generic.story.1", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.2", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.3", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.4", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills", "color": "#0090b4", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills.1", "color": "#489985", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills.2", "color": "#489985", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.defender.passive_skills.3", "color": "#489985", "italic": false}], {"text": ""}],item_model="material/energy_infusion_stone/armor/epic",enchantments={"energy_infusion_stone:skills/armor/defender":3},enchantment_glint_override=false,custom_data={type:"item",rarity:"epic",id:"armor_energy_infusion"},tooltip_style="epic",tooltip_display={hidden_components:["unbreakable","jukebox_playable"]},max_stack_size=64] 64

# ==============================
# Translate Keys
# ==============================
# "item.energy_infusion_stone.defender.type" : "注能之石 / 史詩",
# "item.energy_infusion_stone.defender.passive_skills" : "[反彈]",
# "item.energy_infusion_stone.defender.passive_skills.1" : "當你受到攻擊時:",
# "item.energy_infusion_stone.defender.passive_skills.2" : "有 50% 概率",
# "item.energy_infusion_stone.defender.passive_skills.3" : "使 4 格範圍內敵人朝向玩家反方向位置彈開",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['裝備注能: 捍衛者', "#01ffc0", '注能之石 / 史詩'],
#         "story": {
#             'info': ['散落在世界各地的注能之石','不同顏色對應不同類型','可以用於強化武器 / 裝備','但一旦綁定將無法分開'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'energy_infusion_stone.defender',
#             'item_model': '"material/energy_infusion_stone/armor/epic"',
#             'custom_data': 'type:"item",rarity:"epic",id:"armor_energy_infusion"',
#             'enchantments': ['energy_infusion_stone:skills/armor/defender:1'],
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
#             'name': ['反彈', "#0090b4", "#489985"],
#             'info': [
#                 '當你受到攻擊時:',
#                 '有 50% 概率',
#                 '使 4 格範圍內敵人朝向玩家反方向位置彈開',
#             ]
#         },
#         "attributes": {
#             'is_attributes': False,  # 新增 attributes 標記
#             'name': ['屬性', '#ffffff', '#ffffff'],
#             'info': []
#         }
#     }
