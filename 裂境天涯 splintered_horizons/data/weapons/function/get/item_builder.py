def build_item_struct():
    return {
        "name": ['☀火之魔劍 - 地獄之火', "#7a0000", '劍 / 紀念碑物品'],
        "story": {
            'info': ['來至 星 的舊世界','始源 6 魔劍之一','火之執政官 萊尼維爾 的武器','掌控火元素之力','同時也是地圖的目標物品'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'iron_sword',
            'id': 'pyrosolis',
            'item_model': '"minecraft:sword/infernal_blaze/1"',
            'custom_data': 'type:"sword",rarity:"monument",weapon:"pyrosolis",monument:2',
            'rc': True,
            'lc': False,
            'max_damage': -1,
            'max_stack_size': 1,
            'other': [
                'enchantment_glint_override=false',
                'minimum_attack_charge=0.5',
                'custom_model_data={flags:[1b]}',
                'tooltip_style="light_of_water_mirror"'
            ]
        },

        "skill": {
            "is_skill": True,
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
            'name': ['天火之罰', "#b61500", "#ffee00"],
            'info': [
                {
                    "text": "存在期間每造成 30 點傷害給予自身 1 層【%1$s】(上限 10 層)",
                    "with": [
                        {"translate": "weapon.pyrosolis.passive.apocalypse", "underlined": True, "color": "dark_red"}
                    ]
                },
                {
                    "text": "消失時立即對 6 格範圍內怪物造成 250% 基礎傷害與附加【%1$s】(00:05)",
                    "with": [
                        {"translate": "cse.status_effects.entropy_erosion", "underlined": True, "color": "gold"}
                    ]
                },
                {
                    "text": "以及將魔劍轉換型態為【%1$s】型態",
                    "with": [
                        {"translate": "weapon.pyrosolis.state.active", "underlined": True, "color": "dark_red"}
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