def build_item_struct():
    return {
        "name": ['共生血誓', "dark_red", '胸甲 / 神話'],
        "story": {
            'info': ['來自緋紅之爪伊索克拉的舊世界','昔日的光輝已被黑暗所壟罩','被緋紅之力的渾沌之血侵蝕著這套騎士的鎧甲','述說著曾經人們與深淵的慘烈戰鬥'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'bundle',
            'id': 'symbiotic_blood_oath',
            'item_model': '"chestplate/symbiotic_blood_oath/0"',
            'custom_data': 'type:"armor",rarity:"mythic",active_skills:1b,id:"symbiotic_blood_oath"',
            'rc': False,
            'lc': False,
            'max_damage': 0,
            'max_stack_size': 1,
            'other': [
                'enchantment_glint_override=false',
                'tooltip_style="mythic"',
                'equippable={slot:"chest",equip_sound:"minecraft:block.anvil.use",asset_id:"symbiotic_blood_oath"}'
            ]
        },

        "skill": {
            "is_skill": True,
            "cd": 25,
            "name": ["共生契約", "dark_red", "#ffffff"],
            "info": [
                {
                    "text": "當你使用 %s 時:",
                    "with": [
                        {"keybind": "key.sneak", "underlined": True, "color": "dark_green"}
                    ]
                },
            "如果 6 格範圍內附近有玩家：",
            "扣除自己 25% 血量",
            "使 6 格範圍內玩家(不包括自身) 恢復 8 點血量",
            "如果沒有玩家：",
                {
                    "text": "則使周圍 6 格範圍內怪物持續獲得 %s (00:05)",
                    "with": 
                    [
                        {"translate":"cse.status_effects.bleeding","underlined":True,"color":"dark_red"}
                    ]
                }
            ]
        },

        "passive_skills": {
            'is_passive_skills': True,
            'cd': 10,
            'name': ['血之祝福', '#ff0000', "#ffffff"],
            'info': [
                "當你受傷時",
                {
                    "text": "有 %1$s 機率使你獲得 %2$s IV (00:01)",
                    "with": 
                    [
                        {"text":"50%"},
                        {"translate":"effect.minecraft.regeneration","underlined":True,"color":"dark_green"}
                    ]
                }
            ]
        },

        "ultimate": {
            'is_ultimate': False,
            'cd': 20,
            'name': ['八重黑火', '#ff0000', '#7a0000'],
            'info': []
        },

        "attributes": [
            {
                'attribute': 'armor',
                'id': 'base_armor',
                'value': 2,
                'slot': 'head',
                'operation': 'add_value'
            }
        ]
    }