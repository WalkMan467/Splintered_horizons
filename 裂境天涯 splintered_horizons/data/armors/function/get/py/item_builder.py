def build_item_struct():
    return {
        "name": ['時間停刻之時', "#ffee00", '護甲 / 史詩'],
        "story": {
            'info': ['來至賽琳娜舊世界的裝備','「若時間能如冰般夠停刻於此」','「我希望能夠珍惜此刻」'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'bundle',
            'id': 'wtsf',
            'item_model': '"chestplate/wtsf"',
            'custom_data': 'type:"chestplate",rarity:"epic",id:"wtsf"',
            'rc': False,
            'lc': False,
            'max_damage': 0,
            'max_stack_size': 1,
            'other': [
                'enchantment_glint_override=false',
                'tooltip_style="epic"',
                'equippable={slot:"chest",equip_sound:"item.armor.equip_gold",asset_id:"gold"}'
            ]
        },

        "skill": {
            "is_skill": False,
            "cd": 15,
            "name": ["閃電鏈", "#ffa600", "#ffee00"],
            "info": [
                "命中怪物時重置【雷霆之怒】CD",

                {
                    "text": "當你使用 %s 時:",
                    "with": [
                        {"keybind": "key.use", "underlined": True, "color": "dark_green"}
                    ]
                },

                "立即釋放 3 道閃電對前方敵人造成 250% 傷害",
                "並選中一名怪物附加【閃電標記】",
                "命中怪物時重置【雷霆之怒】CD"
            ]
        },

        "passive_skills": {
            'is_passive_skills': True,
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
                'value': 5,
                'slot': 'chest',
                'operation': 'add_value'
            }
        ]
    }