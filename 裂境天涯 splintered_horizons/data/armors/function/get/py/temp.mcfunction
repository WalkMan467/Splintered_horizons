give @s bundle[item_name=[{"translate": "armor.wtsf", "color": "#ffee00", "bold": true}],lore=[[{"translate": "armor.wtsf.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "armor.wtsf.story.1", "color": "blue", "italic": false}], [{"translate": "armor.wtsf.story.2", "color": "blue", "italic": false}], [{"translate": "armor.wtsf.story.3", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "armor.wtsf.passive_skills", "color": "#ffa600", "bold": true}, {"text": "  "}, {"translate": "armor.skill_cd", "color": "#6E6E6E"}, {"text": "10s"}], [{"text": "", "italic": false}, {"translate": "armor.wtsf.passive_skills.1", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "armor.wtsf.passive_skills.2", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "armor.wtsf.passive_skills.3", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "armor.wtsf.passive_skills.4", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "armor.wtsf.passive_skills.5", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "armor.wtsf.passive_skills.6", "color": "#ffee00", "italic": false, "with": [{"translate": "weapon.effect.starry_sky_frost", "underlined": True, "color": "#5de7ff"}]}], {"text": ""}],attribute_modifiers=[{type:"armor",id:"base_armor",amount:5,operation:"add_value",slot:"chest"}],item_model="chestplate/wtsf",custom_data={type:"chestplate",rarity:"epic",id:"wtsf"},enchantment_glint_override=false,tooltip_style="epic",equippable={slot:"chest",equip_sound:"item.armor.equip_gold",asset_id:"gold"}]

# ==============================
# Translate Keys
# ==============================
# "armor.wtsf" : "時間停刻之時",
# "armor.wtsf.type" : "護甲 / 史詩",
# "armor.wtsf.story.1" : "來至賽琳娜舊世界的裝備",
# "armor.wtsf.story.2" : "「若時間能如冰般夠停刻於此」",
# "armor.wtsf.story.3" : "「我希望能夠珍惜此刻」",
# "armor.wtsf.passive_skills" : "[停刻]",
# "armor.wtsf.passive_skills.1" : "攻擊敵人時：",
# "armor.wtsf.passive_skills.2" : "使自身獲得 1 點充能",
# "armor.wtsf.passive_skills.3" : "",
# "armor.wtsf.passive_skills.4" : "當你獲得 5 次充能時：",
# "armor.wtsf.passive_skills.5" : "下次攻擊敵人時使自身 6 格範圍內怪物獲得凍結 1.5 秒",
# "armor.wtsf.passive_skills.6" : "並使你獲得【%s】符文 (00:05)",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['時間停刻之時', "#ffee00", '護甲 / 史詩'],
#         "story": {
#             'info': ['來至賽琳娜舊世界的裝備','「若時間能如冰般夠停刻於此」','「我希望能夠珍惜此刻」'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'bundle',
#             'id': 'wtsf',
#             'item_model': '"chestplate/wtsf"',
#             'custom_data': 'type:"chestplate",rarity:"epic",id:"wtsf"',
#             'rc': False,
#             'lc': False,
#             'max_damage': 0,
#             'max_stack_size': 1,
#             'other': [
#                 'enchantment_glint_override=false',
#                 'tooltip_style="epic"',
#                 'equippable={slot:"chest",equip_sound:"item.armor.equip_gold",asset_id:"gold"}'
#             ]
#         },
# 
#         "skill": {
#             "is_skill": False,
#             "cd": 15,
#             "name": ["閃電鏈", "#ffa600", "#ffee00"],
#             "info": [
#                 "命中怪物時重置【雷霆之怒】CD",
# 
#                 {
#                     "text": "當你使用 %s 時:",
#                     "with": [
#                         {"keybind": "key.use", "underlined": True, "color": "dark_green"}
#                     ]
#                 },
# 
#                 "立即釋放 3 道閃電對前方敵人造成 250% 傷害",
#                 "並選中一名怪物附加【閃電標記】",
#                 "命中怪物時重置【雷霆之怒】CD"
#             ]
#         },
# 
#         "passive_skills": {
#             'is_passive_skills': True,
#             'cd': 10,
#             'name': ['停刻', '#ffa600', '#ffee00'],
#             'info': [
#                 "攻擊敵人時：",
#                 "使自身獲得 1 點充能",
#                 "",
#                 "當你獲得 5 次充能時：",
#                 "下次攻擊敵人時使自身 6 格範圍內怪物獲得凍結 1.5 秒",
#                 {
#                     "text": "並使你獲得【%s】符文 (00:05)",
#                     "with": [
#                         {"translate":"weapon.effect.starry_sky_frost","underlined":True,"color":"#5de7ff"}
#                     ]
#                 }
#             ]
#         },
# 
#         "ultimate": {
#             'is_ultimate': False,
#             'cd': 20,
#             'name': ['八重黑火', '#ff0000', '#7a0000'],
#             'info': []
#         },
# 
#         "attributes": [
#             {
#                 'attribute': 'armor',
#                 'id': 'base_armor',
#                 'value': 5,
#                 'slot': 'chest',
#                 'operation': 'add_value'
#             }
#         ]
#     }