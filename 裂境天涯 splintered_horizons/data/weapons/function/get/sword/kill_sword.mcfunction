give @s iron_sword[item_name=[{"translate": "weapon.kill_sword", "color": "#ff0000", "bold": true}],lore=[[{"translate": "weapon.kill_sword.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "weapon.kill_sword.story.1", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.kill_sword.skill", "color": "#7a0000", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "weapon.kill_sword.skill.1", "color": "#ff0000",with:[{keybind:"key.use","underlined":true,"color":"dark_green"}], "italic": false}], {"text": ""}],attribute_modifiers=[{type:"attack_damage",id:"base_attack_damage",amount:9999999,operation:"add_multiplied_total",slot:"mainhand"},{type:"attack_speed",id:"base_attack_speed",amount:9999999,operation:"add_multiplied_total",slot:"mainhand"}],max_stack_size=1,unbreakable={},item_model="sword/enuma_elish/1",custom_data={rc:1b,type:"sword",rarity:"mythic",weapon:"kill_sword"},enchantment_glint_override=false,tooltip_style="mythic",kinetic_weapon={delay_ticks:5,contact_cooldown_ticks:10000,forward_movement:0.0,damage_multiplier:0.0,knockback_conditions:{max_duration_ticks:10000},damage_conditions:{max_duration_ticks:10000}},piercing_weapon={deals_knockback:false,dismounts:false,sound:"item.spear.attack",hit_sound:"item.spear.hit"},swing_animation={duration:20,type:"stab"}]

# ==============================
# Translate Keys
# ==============================
# "weapon.kill_sword" : "✮天地乖離開闢之星✮",
# "weapon.kill_sword.type" : "劍 / 管理員武器",
# "weapon.kill_sword.story.1" : "單純輔助殺怪弄的管理員武器",
# "weapon.kill_sword.skill" : "[遠程清除]",
# "weapon.kill_sword.skill.1" : "釋放 [%s] 投射射線偵測擊殺所有準心的怪物",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['✮天地乖離開闢之星✮', "#ff0000", '劍 / 管理員武器'],
#         "story": {
#             'info': ['單純輔助殺怪弄的管理員武器'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'iron_sword',
#             'id': 'kill_sword',
#             'item_model': '"sword/enuma_elish/1"',
#             
#             'custom_data': 'type:"sword",rarity:"mythic",weapon:"kill_sword"',
#             
#             'rc': True,
#             'lc': False,
# 
#             'max_damage': 0,
#             'max_stack_size': 1,
#             'other': [
#                 'enchantment_glint_override=false',
#                 'tooltip_style="mythic"',
#                 'kinetic_weapon={delay_ticks:5,contact_cooldown_ticks:10000,forward_movement:0.0,damage_multiplier:0.0,knockback_conditions:{max_duration_ticks:10000},damage_conditions:{max_duration_ticks:10000}}',
#                 'piercing_weapon={deals_knockback:false,dismounts:false,sound:"item.spear.attack",hit_sound:"item.spear.hit"}',
#                 'swing_animation={duration:20,type:"stab"}'
#             ]
#         },
#         "skill": {
#             "is_skill": True,
#             "cd": 0,
#             "name": ["遠程清除", "#7a0000", "#ff0000"],
#             "info": [
#                 "釋放 [%s] 投射射線偵測擊殺所有準心的怪物"
#             ]
#         },
#         "passive_skills": {
#             'is_passive_skills': False,
#             'cd': 0,
#             'name': ['紅炎之舞', '#A70000', '#7A0000'],
#             'info': [
#                 "普通攻擊分為 4 段特殊攻擊：",
#                 "",
#                 "第一段：向左揮砍對前方 3 格內怪物造成 100% 基礎傷害",
#                 "第二段：向右揮砍對前方 3 格內怪物造成 100% 基礎傷害",
#                 "第三段：在前方 3 格遠的位置召喚【火紅蓮】",
#                 "並且對 1.5 格範圍內怪物造成 150% 基礎傷害",
#                 "第四段：引爆【火紅蓮】並且對 1.5 格範圍內怪物造成 150% 基礎傷害，",
#                 "並且給予你一個終焉閃電"
#                 ]
#         },
#         "ultimate": {
#             'is_ultimate': False,
#             'cd': 20,
#             'name': ['八重黑火', '#ff0000', '#7a0000'],
#             'info': [
#                 '當你按下【右鍵】時：',
#                 '消耗一顆終焉之眼',
#                 '對前方 7 格長範圍內怪物造成 150% 傷害',
#                 '如果你擁有終焉閃電：',
#                 '則消耗一個終焉閃電，並向前發射 1 發黑火彈，對怪物造成 150% 基礎傷害',
#                 ]
#         },
#         "attributes": [
#             {
#                 'attribute': 'attack_damage',
#                 'id': 'base_attack_damage',
#                 'value': 9999999,
#                 'slot': 'mainhand',
#                 'operation': 'add_multiplied_total'
#             },
#             {
#                 'attribute': 'attack_speed',
#                 'id': "base_attack_speed",
#                 'value': 9999999,
#                 'slot': 'mainhand',
#                 'operation': 'add_multiplied_total'
#             }
#         ]
#     }
