attribute = []

def build_item_struct():
    return {
        "name": ['盤岩晶體', "#e4a42f", '鍛造材料 / 史詩'],
        "story": {'info': ['吸收岩之力量的晶體', '能夠透過鍛造台鍛造出強力的武器'], 'color': 'blue'},
        "item_data": {'real_item': 'music_disc_11', 'id': 'rockbound_crystal', 'item_model': '"material/rockbound_crystal"', 'custom_data': '{rc:0b,type:"item",id:"rockbound_crystal"}', 'max_damage': -1, 'max_stack_size': 64, 'rc': False, 'lc': False, 'other': ['tooltip_display={hidden_components:["attribute_modifiers","unbreakable","jukebox_playable"]}', 'tooltip_style="epic"']},
        "skill": {'is_skill': False, 'cd': 0, 'name': ['戰術增益', '#2ab172', '#2ab172'], 'info': ['使用後將獲得隨機以下效果', '攻擊力提升 8% (00:20)', '速度提升 5% (00:20)', '盔甲值提升 8% (00:20)', '每個效果最多疊加 3 層']},
        "passive_skills": {'is_passive_skills': False, 'cd': 5, 'name': ['深淵惡咒', '#8c00ff', '#480083'], 'info': ['當你攻擊命中怪物時:', '對 4 格內怪物添加 2 層【惡咒】']},
        "ultimate": {'is_ultimate': False, 'cd': 30, 'name': ['災厄之火', '#ff0000', '#7a0000'], 'info': ['當你使用右鍵時:', '使【行星墜落】造成傷害變為真實傷害', '並且在該位置生成一片每秒造成 5 點燃燒傷害的區域', '持續 5 秒']},
        "attribute": {'attribute': 'attack_damage', 'value': 0.0, 'slot': 'mainhand', 'operation': 'add_value'}
    }