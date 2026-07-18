give @s music_disc_11[item_name=[{"translate": "item.energy_infusion_stone.generic", "color": "#F94FFF", "bold": true}],lore=[[{"translate": "item.energy_infusion_stone.phantom_fangs.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "item.energy_infusion_stone.generic.story.1", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.2", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.3", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.4", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.phantom_fangs.passive_skills", "color": "#8c00ff", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.phantom_fangs.passive_skills.1", "color": "#F94FFF", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.phantom_fangs.passive_skills.2", "color": "#F94FFF", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.phantom_fangs.passive_skills.3", "color": "#F94FFF", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.phantom_fangs.passive_skills.4", "color": "#F94FFF", "italic": false}], {"text": ""}],item_model="material/energy_infusion_stone/weapon/epic",enchantments={"energy_infusion_stone:skills/weapon/phantom_fangs":1},enchantment_glint_override=false,custom_data={type:"item",rarity:"epic",id:"weapon_energy_infusion"},tooltip_style="epic",tooltip_display={hidden_components:["unbreakable","jukebox_playable"]},max_stack_size=64] 64

# ==============================
# Translate Keys
# ==============================
# "item.energy_infusion_stone.phantom_fangs.type" : "注能之石 / 史詩",
# "item.energy_infusion_stone.phantom_fangs.passive_skills" : "[幻影爪擊]",
# "item.energy_infusion_stone.phantom_fangs.passive_skills.1" : "攻擊命中敵人時:",
# "item.energy_infusion_stone.phantom_fangs.passive_skills.2" : "有 (20% * 附魔等級) 的機率",
# "item.energy_infusion_stone.phantom_fangs.passive_skills.3" : "使敵人受到 5 次 2 點的真實傷害",
# "item.energy_infusion_stone.phantom_fangs.passive_skills.4" : "並且擊飛敵人至空中",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['武器注能: 幻影爪擊', "#F94FFF", '注能之石 / 史詩'],
#         "story": {
#             'info': ['散落在世界各地的注能之石','不同顏色對應不同類型','可以用於強化武器 / 裝備','但一旦綁定將無法分開'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'energy_infusion_stone.phantom_fangs',
#             'item_model': '"material/energy_infusion_stone/weapon/epic"',
#             'custom_data': 'type:"item",rarity:"epic",id:"weapon_energy_infusion"',
#             'enchantments': ['energy_infusion_stone:skills/weapon/phantom_fangs:1'],
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
#             'name': ['幻影爪擊', "#8c00ff", "#F94FFF"],
#             'info': [
#                 '攻擊命中敵人時:',
#                 '有 (20% * 附魔等級) 的機率',
#                 '使敵人受到 5 次 2 點的真實傷害',
#                 '並且擊飛敵人至空中'
#             ]
#         },
#         "attributes": {
#             'is_attributes': False,
#             'name': ['屬性', '#ffffff', '#ffffff'],
#             'info': []
#         }
#     }
