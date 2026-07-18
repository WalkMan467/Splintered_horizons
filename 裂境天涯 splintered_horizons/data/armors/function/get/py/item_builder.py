def build_item_struct():
    return {
        "name": ['聖騎士的頭盔', "gold", '頭盔 / 稀有'],
        "story": {
            'info': ['來自 星 的舊世界','昔日的 12 聖騎之一','「白月」聖騎的遺物','與阿斯卡等聖騎一同守護著世界'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'bundle',
            'id': 'paladins_helmet',
            'item_model': '"head/paladins_helmet/1"',
            'custom_data': 'type:"armor",rarity:"rare",active_skills:0b,id:"paladins_helmet"',
            'rc': False,
            'lc': False,
            'max_damage': 0,
            'max_stack_size': 1,
            'other': [
                'enchantment_glint_override=false',
                'tooltip_style="rare"',
                'equippable={slot:"head",equip_sound:"minecraft:item.armor.equip_netherite",asset_id:"gold"}',
                'enchantments={"armors:paladins_helmet":1}'
            ]
        },

        "skill": {
            "is_skill": False,
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
            'cd': 3,
            'name': ['聖騎守護', '#ff0000', "#ffffff"],
            'info': [
                "當你受到近戰傷害時:",
                {
                    "text": "使你獲得 %2$s II (00:01)",
                    "with": 
                    [
                        {"translate":"effect.minecraft.resistance","underlined":True,"color":"#777777"}
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