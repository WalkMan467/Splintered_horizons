def build_item_struct():
    return {
        "name": ['雷霆二重奏', "#ffee00", '劍 / 史詩'],
        "story": {
            'info': [''],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'iron_sword',
            'id': 'thunder_duet',
            'item_model': '"axe/thunder_duet/1"',
            'custom_data': 'type:"axe",rarity:"epic",weapon:"thunder_duet"',
            'rc': True,
            'lc': False,
            'max_damage': 0,
            'max_stack_size': 1,
            'other': [
                'enchantment_glint_override=false',
                'tooltip_style="epic"',
            ]
        },

        "skill": {
            "is_skill": True,
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
            'cd': 5,
            'name': ['雷霆之怒', '#ffa600', '#ffee00'],
            'info': [
                "當你攻擊命中擁有【雷霆標記】敵人時:",
                "使怪物定格 1 秒",
                "並使怪物位置 3 格範圍內的其他怪物彈開一段距離造成 75% 攻擊力傷害",
                "讓自身跳至空中，期間落下如果命中【雷霆標記】的怪物時",
                "對 6 格範圍內敵人造成 350% 攻擊力傷害並消除【雷霆標記】",
                {
                    "text": "以及使自身獲得【%s】符文 (00:05)",
                    "with": [
                        {"translate":"weapon.effect.shadow","underlined":True,"color":"#470041"}
                    ]
                },
                "",
                {
                    "text": "當你擁有【%s】符文時:",
                    "with": [
                        {"translate":"weapon.effect.chaotic_thunder","underlined":True,"color":"#ff0077"}
                    ]
                },
                "使落下命中 6 格範圍內敵人防禦力減少 20% (00:05)",
                "並重置【閃電鏈】CD"
            ]
        },

        "ultimate": {
            'is_ultimate': False,
            'cd': 20,
            'name': ['八重黑火', '#ff0000', '#7a0000'],
            'info': []
        },

        "attributes": []
    }