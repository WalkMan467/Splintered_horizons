def build_item_struct():
    return {
        "name": ['武器注能: 終焉迴路', "#910000", '注能之石 / 神話'],
        "story": {
            'info': ['散落在世界各地的注能之石','不同顏色對應不同類型','可以用於強化武器 / 裝備','但一旦綁定將無法分開'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'music_disc_11',
            'id': 'energy_infusion_stone.finality_cycle',
            'item_model': '"material/energy_infusion_stone/weapon/mythic"',
            'custom_data': 'type:"item",rarity:"mythic",id:"weapon_energy_infusion"',
            'enchantments': ['energy_infusion_stone:skills/weapon/finality_cycle:1'],
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
            'name': ['終焉轉化', "#8F0000", "#ff4b4b"],
            'info': [
                '當你擊敗敵人時：',
                {
                    "text": "有 ( 20% * 附魔等級 ) 機率使 %1$s 冷卻 -5 秒",
                    "with": [
                        {"text":"%"},
                        {"translate": "tips.eye_of_finality", "underlined": True, "color": "dark_red"}
                    ]
                }
            ]
        },
        "attributes": {
            'is_attributes': False,
            'name': ['屬性', '#ffffff', '#ffffff'],
            'info': []
        }
    }
