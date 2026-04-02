give @s iron_sword[item_name=[{"translate": "weapon.thunder_duet", "color": "#ffee00", "bold": true}],lore=[[{"translate": "weapon.thunder_duet.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "weapon.thunder_duet.story.1", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.skill", "color": "#ffa600", "bold": true}, {"text": "  "}, {"translate": "weapon.skill_cd", "color": "#6E6E6E"}, {"text": "15s"}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.skill.1", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.skill.2", "color": "#ffee00", "italic": false, "with": [{"keybind": "key.use", "underlined": True, "color": "dark_green"}]}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.skill.3", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.skill.4", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.skill.5", "color": "#ffee00", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills", "color": "#ffa600", "bold": true}, {"text": "  "}, {"translate": "weapon.skill_cd", "color": "#6E6E6E"}, {"text": "5s"}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills.1", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills.2", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills.3", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills.4", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills.5", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills.6", "color": "#ffee00", "italic": false, "with": [{"translate": "weapon.effect.shadow", "underlined": True, "color": "#470041"}]}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills.7", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills.8", "color": "#ffee00", "italic": false, "with": [{"translate": "weapon.effect.chaotic_thunder", "underlined": True, "color": "#ff0077"}]}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills.9", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.thunder_duet.passive_skills.10", "color": "#ffee00", "italic": false}], {"text": ""}],max_stack_size=1,unbreakable={},item_model="axe/thunder_duet/1",custom_data={rc:1b,type:"axe",rarity:"epic",weapon:"thunder_duet"},consumable={consume_seconds:10000,animation:"none",has_consume_particles:false},enchantment_glint_override=false,tooltip_style="epic"]

# ==============================
# Translate Keys
# ==============================
# "weapon.thunder_duet" : "雷霆二重奏",
# "weapon.thunder_duet.type" : "斧頭 / 史詩",
# "weapon.thunder_duet.story.1" : "",
# "weapon.thunder_duet.skill" : "[閃電鏈]",
# "weapon.thunder_duet.skill.1" : "命中怪物時重置【雷霆之怒】CD",
# "weapon.thunder_duet.skill.2" : "當你使用 %s 時:",
# "weapon.thunder_duet.skill.3" : "立即釋放 3 道閃電對前方敵人造成 250% 傷害",
# "weapon.thunder_duet.skill.4" : "並選中一名怪物附加【閃電標記】",
# "weapon.thunder_duet.skill.5" : "命中怪物時重置【雷霆之怒】CD",
# "weapon.thunder_duet.passive_skills" : "[雷霆之怒]",
# "weapon.thunder_duet.passive_skills.1" : "當你攻擊命中擁有【雷霆標記】敵人時:",
# "weapon.thunder_duet.passive_skills.2" : "使怪物定格 1 秒",
# "weapon.thunder_duet.passive_skills.3" : "並使怪物位置 3 格範圍內的其他怪物彈開一段距離造成 75% 攻擊力傷害",
# "weapon.thunder_duet.passive_skills.4" : "讓自身跳至空中，期間落下如果命中【雷霆標記】的怪物時",
# "weapon.thunder_duet.passive_skills.5" : "對 6 格範圍內敵人造成 350% 攻擊力傷害並消除【雷霆標記】",
# "weapon.thunder_duet.passive_skills.6" : "以及使自身獲得【%s】符文 (00:05)",
# "weapon.thunder_duet.passive_skills.7" : "",
# "weapon.thunder_duet.passive_skills.8" : "當你擁有【%s】符文時:",
# "weapon.thunder_duet.passive_skills.9" : "使落下命中 6 格範圍內敵人防禦力減少 20% (00:05)",
# "weapon.thunder_duet.passive_skills.10" : "並重置【閃電鏈】CD",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['雷霆二重奏', "#ffee00", '斧頭 / 史詩'],
#         "story": {
#             'info': [''],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'iron_sword',
#             'id': 'thunder_duet',
#             'item_model': '"axe/thunder_duet/1"',
#             'custom_data': 'type:"axe",rarity:"epic",weapon:"thunder_duet"',
#             'rc': True,
#             'lc': False,
#             'max_damage': 0,
#             'max_stack_size': 1,
#             'other': [
#                 'enchantment_glint_override=false',
#                 'tooltip_style="epic"',
#             ]
#         },
# 
#         "skill": {
#             "is_skill": True,
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
#             'cd': 5,
#             'name': ['雷霆之怒', '#ffa600', '#ffee00'],
#             'info': [
#                 "當你攻擊命中擁有【雷霆標記】敵人時:",
#                 "使怪物定格 1 秒",
#                 "並使怪物位置 3 格範圍內的其他怪物彈開一段距離造成 75% 攻擊力傷害",
#                 "讓自身跳至空中，期間落下如果命中【雷霆標記】的怪物時",
#                 "對 6 格範圍內敵人造成 350% 攻擊力傷害並消除【雷霆標記】",
#                 {
#                     "text": "以及使自身獲得【%s】符文 (00:05)",
#                     "with": [
#                         {"translate":"weapon.effect.shadow","underlined":True,"color":"#470041"}
#                     ]
#                 },
#                 "",
#                 {
#                     "text": "當你擁有【%s】符文時:",
#                     "with": [
#                         {"translate":"weapon.effect.chaotic_thunder","underlined":True,"color":"#ff0077"}
#                     ]
#                 },
#                 "使落下命中 6 格範圍內敵人防禦力減少 20% (00:05)",
#                 "並重置【閃電鏈】CD"
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
#         "attributes": []
#     }