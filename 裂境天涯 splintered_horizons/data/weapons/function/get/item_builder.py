def build_item_struct():
    return {
        "name": ['天導神弓', "#ffdf88", '弓 / 史詩'],
        "story": {
            'info': ['來至 星 的舊世界','昔日的 12 聖騎之一','「耀光」聖騎的武器','在最終之戰後殞落','如今飄落至昔日的光之聖殿下','或許是相信著你能夠拯救世界'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'bow',
            'id': 'heavenly_guiding_bow',
            'item_model': '"bow/heavenly_guiding_bow/1"',
            'custom_data': 'type:"bow",rarity:"epic",weapon:"heavenly_guiding_bow",forging_table:1b',
            'rc': False,
            'lc': False,
            'max_damage': 150,
            'max_stack_size': 1,
            'other': [
                'minimum_attack_charge=0.5',
                'minecraft:enchantments={"weapons:type/bow/heavenly_guiding_bow/use":1,"minecraft:unbreaking":1}',
                'enchantment_glint_override=false',
                'tooltip_style="epic"'
            ]
        },

        "skill": {
            "is_skill": True,
            "cd": 10,
            "name": ["天國制導", "#ffdf88", "#9c9c9c"],
            "info": [
                "發射出的箭矢會鎖定離這一發距離最近的怪物",

                {
                    "text": "當你擁有【%1$s】符文時：",
                    "with": [
                        {"translate": "weapon.effect.holy_fire", "underlined": True, "color": "#e6e6e6"}
                    ]
                },
                "召喚出來的箭矢將從 1 發改為連續發射 3 發",
                {
                    "text": "並且命中怪物時給予你【%1$s】符文 (00:05)",
                    "with": [
                        {"translate":"weapon.effect.resplendence","underlined":True,"color":"gold"}
                    ]
                }
            ]
        },

        "passive_skills": {
            'is_passive_skills': False,
            'cd': 13,
            'name': ['風速斬', 'dark_aqua', '#23768f'],
            'info': [
                "連續施放2個風速劍氣，",
                {
                    "text": "對路徑上的敵人造成 150% 攻擊傷害，",
                    "with": [
                        {"keybind": "key.use", "underlined": True, "color": "dark_green"}
                    ]
                },
                "並且使他們起飛。",
                "當你使用此武器技能時",
                {
                    "text": "你將獲得 [%s] 持續 5 秒。",
                    "with": [
                        {"translate":"weapon.effect.resplendence","underlined":True,"color":"gold"}
                    ]
                },
                "可以讓特定武器 CD 減少或者更為強大"
            ]
        },

        "ultimate": {
            'is_ultimate': False,
            'cd': 20,
            'name': ['2', '#ff0000', '#7a0000'],
            'info': ['']
        },
        "attributes": [
            {
                'attribute': 'attack_damage',
                'id': 'base_attack_damage',
                'value': 4,
                'slot': 'mainhand',
                'operation': 'add_value'
            },
            {
                'attribute': 'attack_speed',
                'id': "base_attack_speed",
                'value': -2.4,
                'slot': 'mainhand',
                'operation': 'add_value'
            }
        ]
    }