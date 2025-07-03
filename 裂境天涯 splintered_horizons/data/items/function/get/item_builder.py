attribute = []
# ----- 設定參數 ----- #

name = ['低階注能之石', 'dark_green', '道具 / 稀有']
story = {'info': ['低階的注能之石', '可以用於進化武器', '使它們能夠發揮更強大的力量'], 'color': 'blue'}
item_data     = {'real_item': 'quartz', 'id': 'beginner_energy_infusion_stone', 'item_model': '"material/beginner_energy_infusion_stone"', 'custom_data': '{type:"item",item:"beginner_energy_infusion_stone"}', 'max_damage': -1, 'rc': False, 'other': ['tooltip_style="rare"', 'tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}']}
skill    = {'is_skill': False, 'cd': 3, 'name': ['潮汐音浪', '#9443ff', '#ea00ff'], 'info': ['攻擊有 30%機率觸發【回聲音爆】', '可對6格範圍內敵人造成一次攻擊力250%的基礎傷害', '如果玩家擁有【至暗】狀態', '會使【回聲音爆】造成傷害改為 攻擊力 250% 真實傷害']}
ultimate    = {'is_ultimate': False, 'cd': 60, 'name': ['低音狂響', '#ff3300', '#001aff'], 'info': ['[%s]可以消耗一顆終焉之眼', '立即釋放【終焉音爆】', '對 8 格範圍內敵人造成 250% 真實傷害', '並且附帶 3 秒緩速 50%']}
attribute.append({'attribute': 'attack_damage', 'value': 0, 'slot': 'mainhand', 'operation': 'add_value'})

# ----- init ----- #

backup = "\n\n#name = "+str(name)+"\n#story = "+str(story)+"\n#item_data     = "+str(item_data)+"\n#skill    = "+str(skill)+"\n#ultimate    = "+str(ultimate)+"\n"
for i in attribute: backup = backup +"#attribute.append("+ str(i) + ")\n"
translate = {'story':[], 'skill':[], 'ultimate':[]}

# attribute 屬性
def attribute_id(x):
    if x["attribute"] == 'attack_damage': return 'base_attack_damage'
    elif x["attribute"] == 'attack_speed': return 'base_attack_speed'
    else: return f'{x["slot"]}.{str(attribute_index)}'

# 耐久度
if int(item_data["max_damage"]) != -1:
    item_data["max_damage"] = ',max_damage='+str(item_data["max_damage"])+',damage=0'
else:
    item_data["max_damage"] = ",unbreakable={}"


# ----- generator ----- #

with open(__file__.replace("item_builder.py","#temp.mcfunction"),mode="w+",encoding="utf-8") as f:
    # id
    f.write(f'give @s {item_data["real_item"]}[')

    # item name
    f.write(f'item_name=[{{"translate":"item.{item_data["id"]}","color":"{name[1]}","italic":false,"bold":true}}]')

    # lore
        # type
    f.write(f',lore=[[{{"translate":"item.{item_data["id"]}.type","italic":false,"color":"dark_gray"}}],{{"text":""}}')
        # story
    for i in range(1,len(story["info"])+1):
        f.write(f',[{{"translate":"item.{item_data["id"]}.story.{str(i)}","italic":false,"color":"{story["color"]}"}}]')
        translate["story"].append(f'# "item.{item_data["id"]}.story.{str(i)}" : "{story["info"][i-1]}"')
        # skill
    if skill['is_skill'] == True:

        if int(skill["cd"]) >= 1: skill["cd"] = ',{\"translate\":\"item.skill_cd\",\"color\":\"#6E6E6E\"},{\"text\":\"'+str(skill["cd"])+'s\"}'
        else: skill["cd"] = ""

        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"translate":"item.{item_data["id"]}.skill","color":"{skill["name"][1]}","bold":true}},{{"text":"  "}}{skill["cd"]}]')
        translate["skill"].append(f'# "item.{item_data["id"]}.skill" : "[{skill["name"][0]}] "')
#        translate["skill"].append(f'# "item.{item_data["id"]}.skill.1" : "{skill["info"][0]}"')

        if len(skill["info"]) >= 1:
            for i in range(1,len(skill["info"])+1):
                f.write(f',[{{"text":"","italic":false}},{{"translate":"item.{item_data["id"]}.skill.{str(i)}","color":"{skill["name"][2]}"}}]')
                translate["skill"].append(f'# "item.{item_data["id"]}.skill.{str(i)}" : "{skill["info"][i-1]}"')
        # ultimate
    if ultimate['is_ultimate'] == True:

        if int(ultimate["cd"]) >= 1: ultimate["cd"] = ',{\"translate\":\"item.skill_cd\",\"color\":\"#6E6E6E\"},{\"text\":\"'+str(ultimate["cd"])+'s\"}'
        else: ultimate["cd"] = ""

        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"text":"\uE000","font":"minecraft:icon"}},{{"translate":"item.{item_data["id"]}.ultimate","color":"{ultimate["name"][1]}","bold":true}},{{"text":"\uE000","font":"minecraft:icon"}},{{"text":"  "}}{ultimate["cd"]}]')
        translate["ultimate"].append(f'# "item.{item_data["id"]}.ultimate" : "[{ultimate["name"][0]}] "')
#        translate["ultimate"].append(f'# "item.{item_data["id"]}.ultimate.1" : "{ultimate["info"][0]}"')

        if len(ultimate["info"]) >= 1:
            for i in range(1,len(ultimate["info"])+1):
                f.write(f',[{{"text":"","italic":false}},{{"translate":"item.{item_data["id"]}.ultimate.{str(i)}","color":"{skill["name"][2]}"}}]')
                translate["ultimate"].append(f'# "item.{item_data["id"]}.ultimate.{str(i)}" : "{ultimate["info"][i-1]}"')

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

    # others
    if str(item_data["item_model"]) != '""':
        f.write(f',max_stack_size=1{item_data["max_damage"]},item_model={item_data["item_model"]},custom_data={item_data["custom_data"]}')
    else:
        f.write(f',max_stack_size=1{item_data["max_damage"]},custom_data={item_data["custom_data"]}')

    #  rc
    if item_data.get('rc', True):

        f.write(',consumable={consume_seconds:10000,animation:"none",has_consume_particles:false}')

    # others
    for component in item_data["other"]:
        if component.strip():
            f.write(f',{component}')

    f.write(']')

    # translate
    # 修改這裡，在每行末尾加上逗號
    f.write(f'\n\n# "item.{item_data["id"]}" : "{name[0]}",')
    f.write(f'\n# "item.{item_data["id"]}.type" : "{name[2]}",')
    for i in translate['story']: f.write('\n'+i+',') # 修改這裡
    for i in translate['skill']: f.write('\n'+i+',') # 修改這裡
    for i in translate['ultimate']: f.write('\n'+i+',') # 修改這裡

    f.write(backup)
