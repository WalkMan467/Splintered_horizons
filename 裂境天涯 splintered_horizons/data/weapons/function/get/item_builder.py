def build_item_struct():
    return {
        "name": ['終焉雙重火', "#CE0000", '鐮刀 / 神話'],
        "story": {
            'info': ['最終決戰過後，舊宇宙迎來了終點的結局','同時，宇宙出現了由深淵延伸的新力量「終焉」','這把武器的誕生目前無法得知','同時也埋藏了很多秘密'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'iron_sword',
            'id': 'flame_of_finality',
            'item_model': '"scythe/flame_of_finality/1"',
            
            'custom_data': 'type:"scythe",rarity:"mythic",weapon:"flame_of_finality",forging_table:1b',
            
            'rc': True,
            'lc': True,

            'max_damage': 200,
            'max_stack_size': 1,
            'other': [
                'enchantment_glint_override=false',
                'tooltip_style="mythic"',
                'minecraft:enchantments={"weapons:lc":1}'
            ]
        },
        "skill": {
            "is_skill": False,
            "cd": 0,
            "name": ["紅炎之舞", "#A70000", "#7A0000"],
            "info": [
                "普通攻擊分為 4 段特殊攻擊：",
                "",
                "第一段：向左揮砍對前方 3 格內怪物造成 100% 基礎傷害",
                "第二段：向右揮砍對前方 3 格內怪物造成 100% 基礎傷害",
                "第三段：在前方 3 格遠的位置召喚【火紅蓮】",
                "並且對 1.5 格範圍內怪物造成 150% 基礎傷害",
                "第四段：引爆【火紅蓮】並且對 1.5 格範圍內怪物造成 150% 基礎傷害，",
                "並且給予你一個終焉閃電"
            ]
        },
        "passive_skills": {
            'is_passive_skills': True,
            'cd': 0,
            'name': ['紅炎之舞', '#A70000', '#7A0000'],
            'info': [
                "普通攻擊分為 4 段特殊攻擊：",
                "",
                "第一段：向左揮砍對前方 3 格內怪物造成 100% 基礎傷害",
                "第二段：向右揮砍對前方 3 格內怪物造成 100% 基礎傷害",
                "第三段：在前方 3 格遠的位置召喚【火紅蓮】",
                "並且對 1.5 格範圍內怪物造成 150% 基礎傷害",
                "第四段：引爆【火紅蓮】並且對 1.5 格範圍內怪物造成 150% 基礎傷害，",
                "並且給予你一個終焉閃電"
                ]
        },
        "ultimate": {
            'is_ultimate': True,
            'cd': 20,
            'name': ['八重黑火', '#ff0000', '#7a0000'],
            'info': [
                '當你按下【右鍵】時：',
                '消耗一顆終焉之眼',
                '對前方 7 格長範圍內怪物造成 150% 傷害',
                '如果你擁有終焉閃電：',
                '則消耗一個終焉閃電，並向前發射 1 發黑火彈，對怪物造成 150% 基礎傷害',
                ]
        },
        "attributes": [
            {
                'attribute': 'attack_damage',
                'id': 'base_attack_damage',
                'value': 3.5,
                'slot': 'mainhand',
                'operation': 'add_value'
            },
            {
                'attribute': 'attack_speed',
                'id': "base_attack_speed",
                'value': -1,
                'slot': 'mainhand',
                'operation': 'add_value'
            }
        ]
    }
