# ===================================================
# get 天導神弓 / get heavenly guiding bow

    ## Guide [ function weapons:get/bow/heavenly_guiding_bow ] >>> get 天導神弓 / get heavenly guiding bow

# ===================================================

give @s bow[item_name=[{"translate": "weapon.heavenly_guiding_bow", "color": "#ffdf88", "bold": true}],lore=[[{"translate": "weapon.heavenly_guiding_bow.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "weapon.heavenly_guiding_bow.story.1", "color": "blue", "italic": false}], [{"translate": "weapon.heavenly_guiding_bow.story.2", "color": "blue", "italic": false}], [{"translate": "weapon.heavenly_guiding_bow.story.3", "color": "blue", "italic": false}], [{"translate": "weapon.heavenly_guiding_bow.story.4", "color": "blue", "italic": false}], [{"translate": "weapon.heavenly_guiding_bow.story.5", "color": "blue", "italic": false}], [{"translate": "weapon.heavenly_guiding_bow.story.6", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.heavenly_guiding_bow.skill", "color": "#ffdf88", "bold": true}, {"text": "  "}, {"translate": "weapon.skill_cd", "color": "#6E6E6E"}, {"text": "10s"}], [{"text": "", "italic": false}, {"translate": "weapon.heavenly_guiding_bow.skill.1", "color": "#9c9c9c", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.heavenly_guiding_bow.skill.2", "color": "#9c9c9c", "italic": false, "with": [{"translate": "weapon.effect.holy_fire", "underlined": True, "color": "#e6e6e6"}]}], [{"text": "", "italic": false}, {"translate": "weapon.heavenly_guiding_bow.skill.3", "color": "#9c9c9c", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.heavenly_guiding_bow.skill.4", "color": "#9c9c9c", "italic": false, "with": [{"translate": "weapon.effect.resplendence", "underlined": True, "color": "gold"}]}], {"text": ""}],attribute_modifiers=[{type:"attack_damage",id:"base_attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"base_attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],max_stack_size=1,max_damage=150,damage=0,item_model="bow/heavenly_guiding_bow/1",custom_data={rc:1b,type:"bow",rarity:"epic",weapon:"heavenly_guiding_bow",forging_table:1b},minimum_attack_charge=0.5,enchantment_glint_override=false,tooltip_style="epic",minecraft:enchantments={"weapons:type/bow/heavenly_guiding_bow/use":1,"minecraft:unbreaking":1}]

# ==============================
# Translate Keys
# ==============================
# "weapon.heavenly_guiding_bow" : "天導神弓",
# "weapon.heavenly_guiding_bow.type" : "弓 / 史詩",
# "weapon.heavenly_guiding_bow.story.1" : "來至 星 的舊世界",
# "weapon.heavenly_guiding_bow.story.2" : "昔日的 12 聖騎之一",
# "weapon.heavenly_guiding_bow.story.3" : "「耀光」聖騎的武器",
# "weapon.heavenly_guiding_bow.story.4" : "在最終之戰後殞落",
# "weapon.heavenly_guiding_bow.story.5" : "如今飄落至昔日的光之聖殿下",
# "weapon.heavenly_guiding_bow.story.6" : "或許是相信著你能夠拯救世界",
# "weapon.heavenly_guiding_bow.skill" : "[天國制導]",
# "weapon.heavenly_guiding_bow.skill.1" : "發射出的箭矢會鎖定離這一發距離最近的怪物",
# "weapon.heavenly_guiding_bow.skill.2" : "當你擁有【%1$s】符文時：",
# "weapon.heavenly_guiding_bow.skill.3" : "召喚出來的箭矢將從 1 發改為連續發射 3 發",
# "weapon.heavenly_guiding_bow.skill.4" : "並且命中怪物時給予你【%1$s】符文 (00:05)",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['天導神弓', "#ffdf88", '弓 / 史詩'],
#         "story": {
#             'info': ['來至 星 的舊世界','昔日的 12 聖騎之一','「耀光」聖騎的武器','在最終之戰後殞落','如今飄落至昔日的光之聖殿下','或許是相信著你能夠拯救世界'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'bow',
#             'id': 'heavenly_guiding_bow',
#             'item_model': '"bow/heavenly_guiding_bow/1"',
#             'custom_data': 'rc:1b,type:"bow",rarity:"epic",weapon:"heavenly_guiding_bow",forging_table:1b',
#             'rc': False,
#             'lc': False,
#             'max_damage': 150,
#             'max_stack_size': 1,
#             'other': [
#                 'minimum_attack_charge=0.5',
#                 'minecraft:enchantments={"weapons:type/bow/heavenly_guiding_bow/use":1,"minecraft:unbreaking":1}',
#                 'enchantment_glint_override=false',
#                 'tooltip_style="epic"'
#             ]
#         },
# 
#         "skill": {
#             "is_skill": True,
#             "cd": 10,
#             "name": ["天國制導", "#ffdf88", "#9c9c9c"],
#             "info": [
#                 "發射出的箭矢會鎖定離這一發距離最近的怪物",
# 
#                 {
#                     "text": "當你擁有【%1$s】符文時：",
#                     "with": [
#                         {"translate": "weapon.effect.holy_fire", "underlined": True, "color": "#e6e6e6"}
#                     ]
#                 },
#                 "召喚出來的箭矢將從 1 發改為連續發射 3 發",
#                 {
#                     "text": "並且命中怪物時給予你【%1$s】符文 (00:05)",
#                     "with": [
#                         {"translate":"weapon.effect.resplendence","underlined":True,"color":"gold"}
#                     ]
#                 }
#             ]
#         },
# 
#         "passive_skills": {
#             'is_passive_skills': False,
#             'cd': 13,
#             'name': ['風速斬', 'dark_aqua', '#23768f'],
#             'info': [
#                 "連續施放2個風速劍氣，",
#                 {
#                     "text": "對路徑上的敵人造成 150% 攻擊傷害，",
#                     "with": [
#                         {"keybind": "key.use", "underlined": True, "color": "dark_green"}
#                     ]
#                 },
#                 "並且使他們起飛 ",
#                 "當你使用此武器技能時",
#                 {
#                     "text": "你將獲得 [%s] 持續 5 秒 ",
#                     "with": [
#                         {"translate":"weapon.effect.resplendence","underlined":True,"color":"gold"}
#                     ]
#                 },
#                 "可以讓特定武器 CD 減少或者更為強大"
#             ]
#         },
# 
#         "ultimate": {
#             'is_ultimate': False,
#             'cd': 20,
#             'name': ['2', '#ff0000', '#7a0000'],
#             'info': ['']
#         },
#         "attributes": [
#             {
#                 'attribute': 'attack_damage',
#                 'id': 'base_attack_damage',
#                 'value': 4,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             },
#             {
#                 'attribute': 'attack_speed',
#                 'id': "base_attack_speed",
#                 'value': -2.4,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             }
#         ]
#     }