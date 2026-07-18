def build_item_struct():
    return {
        "name": ['武器注能: 緋紅行者', "#910000", '注能之石 / 神話'],
        "story": {
            'info': ['散落在世界各地的注能之石','不同顏色對應不同類型','可以用於強化武器 / 裝備','但一旦綁定將無法分開'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'music_disc_11',
            'id': 'energy_infusion_stone.crimson_walker',
            'item_model': '"material/energy_infusion_stone/weapon/mythic"',
            'custom_data': 'type:"item",rarity:"mythic",id:"weapon_energy_infusion"',
            'enchantments': ['energy_infusion_stone:skills/weapon/crimson_walker:1'],
            'max_stack_size': 64,
            'other': [
                'tooltip_style="mythic"',
                'tooltip_display={hidden_components:["unbreakable","jukebox_playable"]}'
            ]
        },
        "skill": {
            'is_skill': False,
            'name': ['', "#ff0000", '#ffffff'],
            'info': []
        },
        "passive_skills": {
            'is_passive_skills': True,
            'name': ['緋紅打擊', "#f10000", "#8F0000"],
            'info': [
                '攻擊命中敵人時:',
                '有 (15% * 附魔等級) 的機率',
                {
                    "text": "使敵人獲得 %1$s (00:05)",
                    "with": [
                        {"translate": "cse.status_effects.bleeding", "underlined": True, "color": "dark_red"}
                    ]
                },
                '並進入 5 秒 CD'
            ]
        },
        "attributes": {
            'is_attributes': False,
            'name': ['屬性', '#ffffff', '#ffffff'],
            'info': []
        }
    }
