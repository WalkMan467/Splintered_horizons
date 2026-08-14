# ===================================================
# get 劍 晨曦之光 / get sword morning light

    ## Guide [ function weapons:get/sword/morning_light ] >>> get 劍 晨曦之光 / get sword morning light
    ## Guide [ function main:chapter_test ] >>> chapter test / chapter test

# ===================================================

give @s stone_sword[item_name=[{"translate": "weapon.morning_light", "color": "#ffd000", "bold": true}],lore=[[{"translate": "weapon.morning_light.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "weapon.morning_light.story.1", "color": "blue", "italic": false}], [{"translate": "weapon.morning_light.story.2", "color": "blue", "italic": false}], [{"translate": "weapon.morning_light.story.3", "color": "blue", "italic": false}], [{"translate": "weapon.morning_light.story.4", "color": "blue", "italic": false}], [{"translate": "weapon.morning_light.story.5", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.morning_light.skill", "color": "gold", "bold": true}, {"text": "  "}, {"translate": "weapon.skill_cd", "color": "#6E6E6E"}, {"text": "5s"}], [{"text": "", "italic": false}, {"translate": "weapon.morning_light.skill.1", "color": "#fffb00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.morning_light.skill.2", "color": "#fffb00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.morning_light.skill.3", "color": "#fffb00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.morning_light.skill.4", "color": "#fffb00", "italic": false, "with": [{"translate": "weapon.effect.resplendence", "underlined": True, "color": "gold"}]}], [{"text": "", "italic": false}, {"translate": "weapon.morning_light.skill.5", "color": "#fffb00", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.morning_light.passive_skills", "color": "#ffa600", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "weapon.morning_light.passive_skills.1", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.morning_light.passive_skills.2", "color": "#ffee00", "italic": false, "with": [{"translate": "attribute.name.armor", "underlined": True, "bold": True, "italic": True, "color": "#999999"}]}], [{"text": "", "italic": false}, {"translate": "weapon.morning_light.passive_skills.3", "color": "#ffee00", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.morning_light.passive_skills.4", "color": "#ffee00", "italic": false, "with": [{"translate": "weapon.effect.holy_fire", "underlined": True, "color": "#e6e6e6"}]}], {"text": ""}],attribute_modifiers=[{type:"attack_damage",id:"base_attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"base_attack_speed",amount:-2.15,operation:"add_value",slot:"mainhand"}],max_stack_size=1,max_damage=150,damage=0,item_model="minecraft:sword/morning_light/1",custom_data={type:"sword",rarity:"epic",weapon:"morning_light",forging_table:1b},enchantment_glint_override=false,tooltip_style="epic",minecraft:enchantments={"weapons:type/sword/morning_light/use":1,"minecraft:unbreaking":1},damage_type="weapons:type/sword/morning_light_attack", minimum_attack_charge=0.5]

# ==============================
# Translate Keys
# ==============================
# "weapon.morning_light" : "晨曦之光",
# "weapon.morning_light.type" : "劍 / 史詩",
# "weapon.morning_light.story.1" : "一把由聖光作為材料鍛造出來的劍，",
# "weapon.morning_light.story.2" : "在世界被深淵壟罩之後",
# "weapon.morning_light.story.3" : "依舊還保留了殘餘聖光的能量，",
# "weapon.morning_light.story.4" : "即使黑暗時代降臨",
# "weapon.morning_light.story.5" : "依舊無時無刻抵抗著深淵力量。",
# "weapon.morning_light.skill" : "[黃昏之殤]",
# "weapon.morning_light.skill.1" : "攻擊命中時:",
# "weapon.morning_light.skill.2" : "在空中召喚【光之聖劍】落下",
# "weapon.morning_light.skill.3" : "並且對 3 格範圍內怪物造成 150% 傷害",
# "weapon.morning_light.skill.4" : "如果你擁有 [%s]",
# "weapon.morning_light.skill.5" : "立即刷新此技能CD",
# "weapon.morning_light.passive_skills" : "[神聖制裁]",
# "weapon.morning_light.passive_skills.1" : "【光之聖劍】命中怪物時:",
# "weapon.morning_light.passive_skills.2" : "立即對怪物施加 %s -10% (00:10)",
# "weapon.morning_light.passive_skills.3" : "最多疊加至 30%",
# "weapon.morning_light.passive_skills.4" : "並且使你獲得 %s (00:10)",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['晨曦之光', "#ffd000", '劍 / 史詩'],
#         "story": {
#             'info': ['一把由聖光作為材料鍛造出來的劍，','在世界被深淵壟罩之後','依舊還保留了殘餘聖光的能量，','即使黑暗時代降臨','依舊無時無刻抵抗著深淵力量。'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'stone_sword',
#             'id': 'morning_light',
#             'item_model': '"minecraft:sword/morning_light/1"',
#             'custom_data': 'type:"sword",rarity:"epic",weapon:"morning_light",forging_table:1b',
#             'rc': False,
#             'lc': False,
#             'max_damage': 150,
#             'max_stack_size': 1,
#             'other': [
#                 'minecraft:enchantments={"weapons:type/sword/morning_light/use":1,"minecraft:unbreaking":1}',
#                 'enchantment_glint_override=false',
#                 'tooltip_style="epic"'
#             ]
#         },
# 
#         "skill": {
#             "is_skill": True,
#             "cd": 5,
#             "name": ["黃昏之殤", "gold", "#fffb00"],
#             "info": [
#                 "攻擊命中時:",
#                 "在空中召喚【光之聖劍】落下",
#                 "並且對 3 格範圍內怪物造成 150% 傷害",
#                 {
#                     "text": "如果你擁有 [%s]",
#                     "with": [
#                         {"translate":"weapon.effect.resplendence","underlined":True,"color":"gold"}
#                     ]
#                 },
#                 "立即刷新此技能CD",
#             ]
#         },
# 
#         "passive_skills": {
#             'is_passive_skills': True,
#             'cd': 0,
#             'name': ['神聖制裁', '#ffa600', '#ffee00'],
#             'info': [
#                 "【光之聖劍】命中怪物時:",
#                 {
#                     "text": "立即對怪物施加 %s -10% (00:10)",
#                     "with": [
#                         {"translate": "attribute.name.armor", "underlined": True,"bold":True, "italic":True, "color": "#999999"}
#                     ]
#                 },
#                 "最多疊加至 30%",
#                 {
#                     "text": "並且使你獲得 %s (00:10)",
#                     "with": [
#                         {"translate":"weapon.effect.holy_fire","underlined":True,"color":"#e6e6e6"}
#                     ]
#                 }
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
#                 'value': 3,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             },
#             {
#                 'attribute': 'attack_speed',
#                 'id': "base_attack_speed",
#                 'value': -2.15,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             }
#         ]
#     }