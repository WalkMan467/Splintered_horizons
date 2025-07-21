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

name = ['緋紅之爪 - 符文箭矢', "#e00000", '箭矢 / 史詩']
story = {'info': ['擁有符文力量的箭矢，', '命中地板或目標可以生成該符文的符文陣'], 'color': 'blue'}
item_data     = {'real_item': 'arrow', 'id': 'crimson_claw_arrow', 'item_model': '"arrow/shadow_arrow"', 'custom_data': '{type:"arrow",rarity:"epic",id:"crimson_claw_arrow",ground_detect:1b}', 'max_damage': -1, 'rc': False, 'other': ['tooltip_display={hidden_components:["enchantments","attribute_modifiers","unbreakable"]}', 'tooltip_style="epic"']}
skill    = {'is_skill': True, 'cd': 0, 'name': ['符文陣 - 緋紅之爪', "#e00000", "#8a0000"], 'info': ['箭矢命中地板或目標可以生成該符文的符文陣', '可以讓 4 格範圍內玩家持續獲得該符文持續 5 秒']}
ultimate    = {'is_ultimate': False, 'name': ['狂風暴雨', 'dark_aqua', '#8a0000'], 'info': ['右鍵點擊消耗一個終焉之眼，', '接下來的8秒內如果在空中手持此武器擊中敵人', '在目標位置降下降下閃電造成5點傷害。']}
attribute.append({'attribute': 'attack_speed', 'value': 0, 'slot': 'mainhand', 'operation': 'add_value'})

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
        translate["skill"].append(f'# "weapon.{item_data["id"]}.skill" : "[{skill["name"][0]}] "')
#        translate["skill"].append(f'# "weapon.{item_data["id"]}.skill.1" : "{skill["info"][0]}"')

        if len(skill["info"]) >= 1:
            for i in range(1,len(skill["info"])+1):
                f.write(f',[{{"text":"","italic":false}},{{"translate":"weapon.{item_data["id"]}.skill.{str(i)}","color":"{skill["name"][2]}"}}]')
                translate["skill"].append(f'# "weapon.{item_data["id"]}.skill.{str(i)}" : "{skill["info"][i-1]}"')
        # ultimate
    if ultimate['is_ultimate'] == True:

        if int(ultimate["cd"]) >= 1: ultimate["cd"] = ',{\"translate\":\"weapon.skill_cd\",\"color\":\"#6E6E6E\"},{\"text\":\"'+str(ultimate["cd"])+'s\"}'
        else: ultimate["cd"] = ""
    
        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"text":"\uE000","font":"minecraft:icon"}},{{"translate":"weapon.{item_data["id"]}.ultimate","color":"{ultimate["name"][1]}","bold":true}},{{"text":"\uE000","font":"minecraft:icon"}},{{"text":"  "}}{ultimate["cd"]}]')
        translate["ultimate"].append(f'# "weapon.{item_data["id"]}.ultimate" : "[{ultimate["name"][0]}] "')
#        translate["ultimate"].append(f'# "weapon.{item_data["id"]}.ultimate.1" : "{ultimate["info"][0]}"')

        if len(ultimate["info"]) >= 1:
            for i in range(1,len(ultimate["info"])+1):
                f.write(f',[{{"text":"","italic":false}},{{"translate":"weapon.{item_data["id"]}.ultimate.{str(i)}","color":"{skill["name"][2]}"}}]')
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
    f.write(f'\n\n# "weapon.{item_data["id"]}" : "{name[0]}"')
    f.write(f'\n# "weapon.{item_data["id"]}.type" : "{name[2]}"')
    for i in translate['story']: f.write('\n'+i)
    for i in translate['skill']: f.write('\n'+i)
    for i in translate['ultimate']: f.write('\n'+i)

    f.write(backup)