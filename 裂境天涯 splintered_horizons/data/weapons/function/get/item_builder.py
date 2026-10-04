def build_item_struct():
    return {
        "name": ['☽ 夜幕 ☽', "#fbff00", '劍 / 史詩'],
        "story": {
            'info': [
                '誕生於森林月光之下的武器，',
                '守護著森林的夜晚，',
                '因為力量原本來自深淵，',
                '在最終決戰之後力量徹底的進化'
            ],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'stone_sword',
            'id': 'nightfall',
            'item_model': '"sword/nightfall/1"',
            'custom_data': 'state:0b,rc:1b,type:"sword",rarity:"epic",weapon:"nightfall",forging_table:1b',
            'rc': True,
            'lc': False,
            'max_damage': 150,
            'max_stack_size': 1,
            'other': [
                'minecraft:enchantments={"minecraft:unbreaking":1,"weapons:type/sword/nightfall/0":1}',
                'enchantment_glint_override=false', 'tooltip_style="epic"',
                'damage_type="weapons:type/sword/nightfall_attack"',
                'minimum_attack_charge=0.5'
            ]
        },

        "skill": {
            "is_skill": True,
            "cd": 5,
            "name": ["月相輪轉", "dark_red", "red"],
            "info": [
                {
                    "text": "使用【%1$s】觸發技能",
                    "with": [
                        {"keybind": "key.use", "underlined": True, "color": "dark_green"}
                    ],
                },
                {
                    "text": "使你獲得【%1$s】符文 (00:05)",
                    "with": [
                        {"translate": "weapon.effect.shadow", "underlined": True, "color": "#470041"}
                    ],
                },
                "以及將型態暫時切換至 血月 (00:05)",
                {
                    "text": "並立即對 4 格內敵人附加 %1$s (00:05)",
                    "with": [
                        {"translate":"cse.status_effects.bleeding","underlined":True,"color":"dark_red"}
                    ],
                },
                {
                    "text": "與引爆所有【%1$s】(每層造成 150% 基礎傷害)",
                    "with": [
                        {"translate": "weapon.effect.lunar_eclipse", "underlined": True, "color": "#7B1FA2"}
                    ],
                },
                {
                    "text": "當你擁有【%1$s】符文時：",
                    "with": [
                        {"translate": "weapon.effect.crimson_claw", "underlined": True, "color": "dark_red"}
                    ],
                },
                "立即對 4 格範圍內隨機敵人造成 5 次 150% 真實傷害",
                "並使你恢復 4 點血量",
            ]
        },

        "passive_skills": {
            'is_passive_skills': True,
            'cd': 0,
            'name': ['蝕月之刃', 'dark_red', 'red'],
            'info': [
                {
                    'text': '攻擊敵人附加 1 層【%1$s】(最多 12 層)',
                    'with': [
                        {'translate': 'weapon.effect.lunar_eclipse', 'underlined': True, 'color': '#7B1FA2'}
                    ],
                },
                '當你攻擊命中敵人 5 次時：',
                '獲得加速 25% (00:01)',
                '並在 1 秒後對 2 ~ 4.5 格內敵人造成 250% 真實傷害',
                {
                    'text': '與疊加 2 層【%1$s】',
                    'with': [
                        {'translate': 'weapon.effect.lunar_eclipse', 'underlined': True, 'color': '#7B1FA2'}
                    ],
                },
                {
                    'text': '當你擁有【%1$s】符文時：',
                    'with': [
                        {'translate': 'weapon.effect.crimson_claw', 'underlined': True, 'color': 'dark_red'}
                    ],
                },
                '恢復自身 4 點血量',
            ]
        },

        "ultimate": {
            'is_ultimate': False,
            'cd': 0,
            'name': ['', '#ff0000', '#7a0000'],
            'info': ['']
        },
        "attributes": [
            {
                'attribute': 'attack_speed',
                'id': "base_attack_speed",
                'value': 0,
                'slot': 'mainhand',
                'operation': 'add_value'
            }
        ]
    }
