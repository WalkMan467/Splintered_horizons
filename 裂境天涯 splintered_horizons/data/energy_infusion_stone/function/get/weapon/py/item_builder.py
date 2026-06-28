def build_item_struct():
    return {
        "name": ['武器注能: 騎兵', "#fbff03", '注能之石 / 史詩'],
        "story": {
            'info': ['散落在世界各地的注能之石','不同顏色對應不同類型','可以用於強化武器 / 裝備','但一旦綁定將無法分開'],
            'color': 'blue'
        },
        "item_data": {
            'real_item': 'enchanted_book',
            'id': 'energy_infusion_stone.cavalryman',
            'item_model': '"material/energy_infusion_stone/weapon/epic"',
            'custom_data': 'type:"item",rarity:"epic",id:"weapon_energy_infusion"',
            'stored_enchantments': ['energy_infusion_stone:skills/weapon/cavalryman:1'],
            'max_stack_size': 64,
            'other': [
                'tooltip_style="epic"',
                'tooltip_display={hidden_components:["stored_enchantments"]}'
            ]
        },
        "skill": {
            'is_skill': False,
            'name': ['', "#ff0000", '#ffffff'],
            'info': []
        },
        "passive_skills": {
            'is_passive_skills': True,
            'name': ['衝鋒', "#ffaf03", '#ffffff'],
            'info': [
                '當你保持衝刺超過 2 秒時:',
                {
                    "text": "給予玩家 %1$s%2$s 直至不處於衝刺狀態",
                    "with": [
                        {"translate": "attribute.name.movement_speed", "underlined": True, "color": "dark_aqua"},
                        {"text": "+25%", "underlined": True, "color": "dark_aqua"}
                    ]
                },
                '',
                '當你保持衝刺時命中敵人:',
                {
                    "text": "給予玩家 %1$s %2$s (00:05)",
                    "with": [
                        {"translate": "attribute.name.movement_speed", "underlined": True, "color": "dark_aqua"},
                        {"text": "+10%", "underlined": True, "color": "dark_aqua"}
                    ]
                },
                '該效果最多疊加至 30%',
                '每次命中刷新時間',
            ]
        },
        "attributes": {
            'is_attributes': True,  # 新增 attributes 標記
            'name': ['屬性', '#ffffff', '#ffffff'],
            'info': [
                {
                    "text": "%1$s %2$s (%3$s %2$s)",
                    "with": [
                        {"translate": "attribute.name.movement_speed", "underlined": False, "bold":False, "color": "green"},
                        {"text": "+25%", "underlined": False, "bold":False, "color": "green"},
                        {"translate": "item.energy_infusion_stone.generic.attributes.level", "underlined": False, "bold":False, "color": "green"}
                    ]
                },
                {
                    "text": "%1$s %2$s (%3$s %2$s)",
                    "with": [
                        {"translate": "attribute.name.sneaking_speed", "underlined": False, "bold":False, "color": "green"},
                        {"text": "+25%", "underlined": False, "bold":False, "color": "green"},
                        {"translate": "item.energy_infusion_stone.generic.attributes.level", "underlined": False, "bold":False, "color": "green"}
                    ]
                },
                {
                    "text": "%1$s %2$s (%3$s %2$s)",
                    "with": [
                        {"translate": "attribute.name.attack_speed", "underlined": False, "bold":False, "color": "green"},
                        {"text": "+0.25", "underlined": False, "bold":False, "color": "green"},
                        {"translate": "item.energy_infusion_stone.generic.attributes.level", "underlined": False, "bold":False, "color": "green"}
                    ]
                }
            ]
        }
    }
