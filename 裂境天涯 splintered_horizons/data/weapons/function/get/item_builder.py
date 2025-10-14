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

name = ['異界晨星', '#ffe600', '劍 / 傳說']
story = {'info': ['異界中的一把劍像流星一般墜落在地面，', '它散發著隕星能量，', '如同耀眼的星星'], 'color': 'blue'}
item_data     = {'real_item': 'iron_sword', 'id': 'otherworld_star', 'item_model': '""', 'custom_data': '{rc:1b,type:"sword",rarity:"mythic",weapon:"otherworld_star"}', 'max_damage': -1, 'max_stack_size': 1 , 'rc': True, 'other': ['enchantments={"cartographer_custom_enchantments:passive/starfall":3}', 'enchantment_glint_override=false', 'tooltip_display={hidden_components:["enchantments"]}','tooltip_style="legendary"']}
skill = {'is_skill': True, 'cd': 15, 'name': ['超導晨星', "#00D9FF", "#00bbb2"], 'info': ['當你攻擊命中時:','目標獲得一層【感光】', '8 秒後消耗全部層數釋放【行星墜落】造成 200% 基礎傷害', '根據【感光】層數 + 2 點傷害', '當你擁有 %s 時:','可以使附近 4 格範圍內玩家獲得 加速 II 持續 2 秒']}
passive_skills = {'is_passive_skills': True, 'cd': 0, 'name': ['冰霜之落', "#A4DEFF", "#209AE0"], 'info': ['當你攻擊命中時:', '有一定概率召喚冰霜隕石墜落在目標位置', '落在被攻擊實體附近', '造成 150% 基礎傷害']}
ultimate = {'is_ultimate': False, 'cd': 30, 'name': ['災厄之火', '#ff0000', '#7a0000'], 'info': ['當你使用右鍵時:', '使【行星墜落】造成傷害變為真實傷害', '並且在該位置生成一片每秒造成 5 點燃燒傷害的區域', '持續 5 秒']}
attribute.append({'attribute': 'attack_damage', 'value': 4.5, 'slot': 'mainhand', 'operation': 'add_value'})
attribute.append({'attribute': 'attack_speed', 'value': -2.4, 'slot': 'mainhand', 'operation': 'add_value'})

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
def attribute_id(x):
    if x["attribute"] == 'attack_damage': return 'base_attack_damage'
    elif x["attribute"] == 'attack_speed': return 'base_attack_speed'
    else: return f'{x["slot"]}.{str(attribute_index)}' 

# 耐久度
if int(item_data["max_damage"]) != -1: 
    item_data["max_damage"] = f',max_damage={item_data["max_damage"]},damage=0'
else: 
    item_data["max_damage"] = ",unbreakable={}"

# ----- generator ----- #

with open(__file__.replace("item_builder.py","#temp.mcfunction"),mode="w+",encoding="utf-8") as f:
    # id
    f.write(f'give @s {item_data["real_item"]}[')
    
    # item name
    f.write(f'item_name=[{{"translate":"weapon.{item_data["id"]}","color":"{name[1]}","italic":false,"bold":true}}]')
    
    # lore
        # type
    f.write(f',lore=[[{{"translate":"weapon.{item_data["id"]}.type","italic":false,"color":"dark_gray"}}],{{"text":""}}')
        # story
    for i in range(1,len(story["info"])+1):
        f.write(f',[{{"translate":"weapon.{item_data["id"]}.story.{str(i)}","italic":false,"color":"{story["color"]}"}}]')
        translate["story"].append(f'# "weapon.{item_data["id"]}.story.{str(i)}" : "{story["info"][i-1]}"')
        # skill
    if skill['is_skill'] == True:

        if int(skill["cd"]) >= 1: skill["cd"] = ',{\"translate\":\"weapon.skill_cd\",\"color\":\"#6E6E6E\"},{\"text\":\"'+str(skill["cd"])+'s\"}'
        else: skill["cd"] = ""
    
        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"translate":"weapon.{item_data["id"]}.skill","color":"{skill["name"][1]}","bold":true}},{{"text":"  "}}{skill["cd"]}]')
        translate["skill"].append(f'# "weapon.{item_data["id"]}.skill" : "[{skill["name"][0]}]"')

        if len(skill["info"]) >= 1:
            for i in range(1,len(skill["info"])+1):
                f.write(f',[{{"text":"","italic":false}},{{"translate":"weapon.{item_data["id"]}.skill.{str(i)}","color":"{skill["name"][2]}"}}]')
                translate["skill"].append(f'# "weapon.{item_data["id"]}.skill.{str(i)}" : "{skill["info"][i-1]}"')

    # passive skills
    if passive_skills['is_passive_skills'] == True:

        if int(passive_skills["cd"]) >= 1: passive_skills["cd"] = ',{\"translate\":\"weapon.skill_cd\",\"color\":\"#6E6E6E\"},{\"text\":\"'+str(passive_skills["cd"])+'s\"}'
        else: passive_skills["cd"] = ""
    
        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"translate":"weapon.{item_data["id"]}.passive_skills","color":"{passive_skills["name"][1]}","bold":true}},{{"text":"  "}}{passive_skills["cd"]}]')
        translate["passive_skills"].append(f'# "weapon.{item_data["id"]}.passive_skills" : "[{passive_skills["name"][0]}]"')

        if len(passive_skills["info"]) >= 1:
            for i in range(1,len(passive_skills["info"])+1):
                f.write(f',[{{"text":"","italic":false}},{{"translate":"weapon.{item_data["id"]}.passive_skills.{str(i)}","color":"{passive_skills["name"][2]}"}}]')
                translate["passive_skills"].append(f'# "weapon.{item_data["id"]}.passive_skills.{str(i)}" : "{passive_skills["info"][i-1]}"')

        # ultimate
    if ultimate['is_ultimate'] == True:

        if int(ultimate["cd"]) >= 1: ultimate["cd"] = ',{\"translate\":\"weapon.skill_cd\",\"color\":\"#6E6E6E\"},{\"text\":\"'+str(ultimate["cd"])+'s\"}'
        else: ultimate["cd"] = ""
    
        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"text":"\uE000","font":"minecraft:icon"}},{{"translate":"weapon.{item_data["id"]}.ultimate","color":"{ultimate["name"][1]}","bold":true}},{{"text":"\uE000","font":"minecraft:icon"}},{{"text":"  "}}{ultimate["cd"]}]')
        translate["ultimate"].append(f'# "weapon.{item_data["id"]}.ultimate" : "[{ultimate["name"][0]}]"')

        if len(ultimate["info"]) >= 1:
            for i in range(1,len(ultimate["info"])+1):
                f.write(f',[{{"text":"","italic":false}},{{"translate":"weapon.{item_data["id"]}.ultimate.{str(i)}","color":"{ultimate["name"][2]}"}}]')
                translate["ultimate"].append(f'# "weapon.{item_data["id"]}.ultimate.{str(i)}" : "{ultimate["info"][i-1]}"')
                
    f.write(']')
    
    # attribute
    attribute_index = 0
    if not attribute == []:
        temp = []
        f.write(',attribute_modifiers=[')
        for i in attribute:
            attribute_index += 1
            temp.append(f'{{id:"{attribute_id(i)}",type:"{i["attribute"]}",amount:{i["value"]},operation:"{i["operation"]}",slot:"{i["slot"]}"}}')
        f.write(','.join(temp))
    f.write(']')
    
    # max_stack_size 處理
    max_stack = int(item_data.get("max_stack_size", 1))
    if max_stack <= 1:
        max_stack_val = 1
    elif max_stack > 99:
        max_stack_val = 99
    else:
        max_stack_val = max_stack
    
    # others
    if str(item_data["item_model"]) != '""': 
        f.write(f',max_stack_size={max_stack_val}{item_data["max_damage"]},item_model={item_data["item_model"]},custom_data={item_data["custom_data"]}')
    else:
        f.write(f',max_stack_size={max_stack_val}{item_data["max_damage"]},custom_data={item_data["custom_data"]}')

    #  rc
    if item_data.get('rc', True):
        f.write(',consumable={consume_seconds:10000,animation:"none",has_consume_particles:false}')

    # others
    for component in item_data["other"]:
        if component.strip():
            f.write(f',{component}')

    f.write(']')
    
    # translate
    f.write(f'\n\n# "weapon.{item_data["id"]}" : "{name[0]}"')
    f.write(f'\n# "weapon.{item_data["id"]}.type" : "{name[2]}"')
    for i in translate['story']: f.write('\n'+i)
    for i in translate['skill']: f.write('\n'+i)
    for i in translate['passive_skills']: f.write('\n'+i)
    for i in translate['ultimate']: f.write('\n'+i)

    f.write(backup)
