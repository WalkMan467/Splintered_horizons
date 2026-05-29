def build_item_struct():
    return {
        "name": ['盤岩頭盔', "#b37400", '頭盔 / 史詩'],
        "story": {
            'info': ['來自異世界的魔法頭盔','由盤岩凝聚而成','可以在危急時刻承受一定傷害'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'bundle',
            'id': 'coiled_rock_helmet',
            'item_model': '"head/coiled_rock_helmet/1"',
            'custom_data': 'type:"armor",rarity:"epic",active_skills:1b,id:"coiled_rock_helmet"',
            'rc': False,
            'lc': False,
            'max_damage': 0,
            'max_stack_size': 1,
            'other': [
                'enchantment_glint_override=false',
                'tooltip_style="epic"',
                'equippable={slot:"head",equip_sound:"item.armor.equip_copper",asset_id:"copper"}'
            ]
        },

        "skill": {
            "is_skill": True,
            "cd": 25,
            "name": ["硬化", "#ffa600", "#b37400"],
            "info": [
                {
                    "text": "當你使用 %s 時:",
                    "with": [
                        {"keybind": "key.sneak", "underlined": True, "color": "dark_green"}
                    ]
                },
                {
                    "text": "立即獲得 3 點 %s (00:05)",
                    "with": [
                        {"translate": "attribute.name.armor", "underlined": True, "color": "#999999"}
                    ]
                },
                {
                    "text": "以及 5 點 %s (00:05)",
                    "with": [
                        {"translate": "attribute.name.armor_toughness", "underlined": True, "color": "#4B4B4B"}
                    ]
                }
            ]
        },

        "passive_skills": {
            'is_passive_skills': False,
            'cd': 10,
            'name': ['停刻', '#ffa600', '#ffee00'],
            'info': [
                "攻擊敵人時：",
                "使自身獲得 1 點充能",
                "",
                "當你獲得 5 次充能時：",
                "下次攻擊敵人時使自身 6 格範圍內怪物獲得凍結 1.5 秒",
                {
                    "text": "並使你獲得【%s】符文 (00:05)",
                    "with": [
                        {"translate":"weapon.effect.starry_sky_frost","underlined":True,"color":"#5de7ff"}
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