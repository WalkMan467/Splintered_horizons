def build_item_struct():
    return {
        "name": ['熵蝕之火箭矢', "#ff3c00", '箭矢 / 傳說'],
        "story": {
            'info': ['古老的混沌之火壟罩了太陽','他們說這叫日蝕','但直到大陸上的火焰漸漸燃燒它們能燃燒的一切時','真正的日蝕，其實是一股名叫「熵」與「深淵」結合而成的','其力量來自於伊索克拉與梅倫絲娜的舊世界'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'arrow',
            'id': 'sunfire_of_entropy_erosion_arrow',
            'item_model': '"arrow/sunfire_of_entropy_erosion_arrow"',
            'custom_data': 'type:"arrow",rarity:"legendary",id:"sunfire_of_entropy_erosion_arrow"',
            'rc': False,
            'lc': False,
            'max_damage': -1,
            'max_stack_size': 1,
            'other': [
                'tooltip_display={hidden_components:["unbreakable","attribute_modifiers"]}',
                'tooltip_style="legendary"'
            ]
        },

        "skill": {
            "is_skill": False,
            "cd": 10,
            "name": ["雙生之火", "#ff0000", "#ff5100"],
            "info": [
                "對 6 格範圍內隨機敵人造成 150% 基礎傷害",
                {
                    "text": "並且召喚一個名為【%1$s】的召喚物跟隨玩家 (00:15)",
                    "with": [
                        {"translate": "weapon.pyrosolis.sunnoned_creature", "underlined": True, "color": "dark_red"}
                    ],
                },
                {
                    "text": "以及給予玩家【%1$s】與【%2$s】符文 (00:15)",
                    "with": [
                        {"translate": "weapon.effect.holy_fire", "underlined": True, "color": "#e6e6e6"},
                        {"translate": "weapon.effect.chaotic_thunder", "underlined": True, "color": "#ff0077"}
                    ],
                },
                "處於【燃燒】狀態時:",
                {
                    "text": "消耗一層【%1$s】使 CD 改為 5 秒",
                    "with": [
                        {"translate": "weapon.pyrosolis.passive.apocalypse", "underlined": True, "color": "dark_red"}
                    ],
                },
                "並立即對 6 格內敵人造成 250% 基礎傷害",
                "並且給予自身 攻擊力提升 15% (00:15)",
                "此提升可疊加至最高 150%"
            ]
        },

        "passive_skills": {
            'is_passive_skills': True,
            'cd': 0,
            'name': ['熵蝕灼燒', "#ff0000", "#ff5100"],
            'info': [
                '當你攻擊命中時:',
                {
                    "text": "附加 %1$s (0:05)",
                    "with": [
                        {"translate":"cse.status_effects.entropy_erosion","underlined":True,"color":"#ff5100"}
                    ]
                }
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