'''
「裂境天涯 Splintered Horizons」的物品敘述產生器 之 使用指南
 - 適用物品 : 武器 / 盔甲
 - name          : [武器名稱,顏色,種類]
 - story         : {info(故事敘述),color(敘述顏色)}
 - item_data     : {id(真正的minecraft物品，ex:carrot_on_a_stick),item_model(就..你知道的),custom_data(物品所需的custom_data就放在這)}
 - skill         : {is_skill(會不會顯示出來),name([技能名稱,技能顏色,敘述顏色]),info(物品敘述)}
 - attribute     : {attribute(屬性id),value(數值),slot(哪個欄位生效),operation(看實數or%數)}
執行完會生成在 #temp.mcfunction 內
'''


attribute = []
# ----- 設定參數 ----- #

name = ['合成配方書: 夜幕', "#15b600", '配方書 / 稀有']
story = {'info': ['合成配方書', '可以立即解鎖裝備與武器的配方','可以透過安全區的鍛造台去合成該配方的裝備與武器'], 'color': 'blue'}
item_data = {'real_item': 'music_disc_11', 'id': 'synthesis_formula_book.nightfall', 'item_model': '"blade_pottery_sherd"', 'custom_data': '{rc:0b,type:"recipe",id:"nightfall"}', 'max_damage': -1, 'max_stack_size': 64, 'rc': False, 'other': ['tooltip_display={hidden_components:["unbreakable","jukebox_playable"]}', 'tooltip_style="epic"']}
skill = {'is_skill': False, 'cd': 0, 'name': ['戰術增益', "#ffd000", "#ffe079"], 'info': ['使用後將獲得隨機以下效果', '攻擊力提升 8% (00:20)', '速度提升 5% (00:20)', '盔甲值提升 8% (00:20)', '每個效果最多疊加 3 層']}
passive_skills = {'is_passive_skills': False, 'cd': 5, 'name': ['深淵惡咒', '#8c00ff', '#480083'], 'info': ['當你攻擊命中怪物時:', '對 4 格內怪物添加 2 層【惡咒】']}
ultimate = {'is_ultimate': False, 'cd': 30, 'name': ['災厄之火', '#ff0000', '#7a0000'], 'info': ['當你使用右鍵時:', '使【行星墜落】造成傷害變為真實傷害', '並且在該位置生成一片每秒造成 5 點燃燒傷害的區域', '持續 5 秒']}

# ----- init ----- #

backup = "\n\n"
backup += "#name = " + str(name) + "\n"
backup += "#story = " + str(story) + "\n"
backup += "#item_data = " + str(item_data) + "\n"
backup += "#skill = " + str(skill) + "\n"
backup += "#passive_skills = " + str(passive_skills) + "\n"
backup += "#ultimate = " + str(ultimate) + "\n"
for i in attribute:
    backup += "#attribute.append(" + str(i) + ")\n"

translate = {'story':[], 'skill':[], 'passive_skills':[], 'ultimate':[]}

# attribute 屬性
def attribute_id(x, index):
    if x["attribute"] == 'attack_damage': return 'base_attack_damage'
    elif x["attribute"] == 'attack_speed': return 'base_attack_speed'
    else: return f'{x["slot"]}.{str(index)}'

# 耐久度
if int(item_data["max_damage"]) != -1: 
    item_data["max_damage"] = f',max_damage={item_data["max_damage"]},damage=0'
else: 
    item_data["max_damage"] = ",unbreakable={}"

# ----- generator ----- #

with open(__file__.replace("item_builder.py","#temp.mcfunction"), mode="w+", encoding="utf-8") as f:
    # id
    f.write(f'give @s {item_data["real_item"]}[')
    
    # item name
    f.write(f'item_name=[{{"translate":"item.{item_data["id"]}","color":"{name[1]}","italic":false,"bold":true}}]')
    
    # lore
    f.write(f',lore=[[{{"translate":"item.{item_data["id"]}.type","italic":false,"color":"dark_gray"}}],{{"text":""}}')
    for i in range(1, len(story["info"]) + 1):
        f.write(f',[{{"translate":"item.{item_data["id"]}.story.{str(i)}","italic":false,"color":"{story["color"]}"}}]')
        translate["story"].append(f'# "item.{item_data["id"]}.story.{str(i)}" : "{story["info"][i-1]}"')

    # skill
    if skill['is_skill']:
        skill_cd = f',{{"translate":"item.skill_cd","color":"#6E6E6E"}},{{"text":"{skill["cd"]}s"}}' if int(skill["cd"]) >= 1 else ""
        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"translate":"item.{item_data["id"]}.skill","color":"{skill["name"][1]}","bold":true}},{{"text":"  "}}{skill_cd}]')
        translate["skill"].append(f'# "item.{item_data["id"]}.skill" : "[{skill["name"][0]}]"')
        for i in range(1, len(skill["info"]) + 1):
            f.write(f',[{{"text":"","italic":false}},{{"translate":"item.{item_data["id"]}.skill.{str(i)}","color":"{skill["name"][2]}"}}]')
            translate["skill"].append(f'# "item.{item_data["id"]}.skill.{str(i)}" : "{skill["info"][i-1]}"')

    # passive skills
    if passive_skills['is_passive_skills']:
        cd_text = f',{{"translate":"item.skill_cd","color":"#6E6E6E"}},{{"text":"{passive_skills["cd"]}s"}}' if int(passive_skills["cd"]) >= 1 else ""
        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"translate":"item.{item_data["id"]}.passive_skills","color":"{passive_skills["name"][1]}","bold":true}},{{"text":"  "}}{cd_text}]')
        translate["passive_skills"].append(f'# "item.{item_data["id"]}.passive_skills" : "[{passive_skills["name"][0]}]"')
        for i in range(1, len(passive_skills["info"]) + 1):
            f.write(f',[{{"text":"","italic":false}},{{"translate":"item.{item_data["id"]}.passive_skills.{str(i)}","color":"{passive_skills["name"][2]}"}}]')
            translate["passive_skills"].append(f'# "item.{item_data["id"]}.passive_skills.{str(i)}" : "{passive_skills["info"][i-1]}"')

    # ultimate
    if ultimate['is_ultimate']:
        cd_text = f',{{"translate":"item.skill_cd","color":"#6E6E6E"}},{{"text":"{ultimate["cd"]}s"}}' if int(ultimate["cd"]) >= 1 else ""
        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"text":"\uE000","font":"minecraft:icon"}},{{"translate":"item.{item_data["id"]}.ultimate","color":"{ultimate["name"][1]}","bold":true}},{{"text":"\uE000","font":"minecraft:icon"}},{{"text":"  "}}{cd_text}]')
        translate["ultimate"].append(f'# "item.{item_data["id"]}.ultimate" : "[{ultimate["name"][0]}]"')
        for i in range(1, len(ultimate["info"]) + 1):
            f.write(f',[{{"text":"","italic":false}},{{"translate":"item.{item_data["id"]}.ultimate.{str(i)}","color":"{ultimate["name"][2]}"}}]')
            translate["ultimate"].append(f'# "item.{item_data["id"]}.ultimate.{str(i)}" : "{ultimate["info"][i-1]}"')

    f.write(']')  # lore 結束

    # attribute
    if attribute:
        temp = []
        f.write(',attribute_modifiers=[')
        for idx, i in enumerate(attribute, start=1):
            temp.append(f'{{id:"{attribute_id(i, idx)}",type:"{i["attribute"]}",amount:{i["value"]},operation:"{i["operation"]}",slot:"{i["slot"]}"}}')
        f.write(','.join(temp))
        f.write(']')  # 只有在 attribute 不為空時才加這個閉括號

    # max_stack_size 處理
    max_stack = int(item_data.get("max_stack_size", 1))
    max_stack_val = max(1, min(max_stack, 99))

    # other data
    item_model_part = f',item_model={item_data["item_model"]}' if str(item_data.get("item_model","")) != '""' else ""
    f.write(f',max_stack_size={max_stack_val}{item_data["max_damage"]}{item_model_part},custom_data={item_data["custom_data"]}')

    # rc
    if item_data.get('rc', True):
        f.write(',consumable={consume_seconds:10000,animation:"none",has_consume_particles:false}')

    # other components
    for component in item_data.get("other", []):
        if component.strip():
            f.write(f',{component}')

    # ✅ 在 give 指令最後面加上數量
    f.write(f'] {max_stack_val}')

    # translate
    f.write(f'\n\n# "item.{item_data["id"]}" : "{name[0]}"')
    f.write(f'\n# "item.{item_data["id"]}.type" : "{name[2]}"')
    for i in translate['story']: f.write('\n'+i)
    for i in translate['skill']: f.write('\n'+i)
    for i in translate['passive_skills']: f.write('\n'+i)
    for i in translate['ultimate']: f.write('\n'+i)

    f.write(backup)