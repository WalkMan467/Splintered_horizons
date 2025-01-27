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


name = ['水鏡之光', '#0066ff', '里程碑物品 / 劍']
story = {'info': ['', '', '',''], 'color': 'blue'}
item_data     = {'real_item': 'stone_sword', 'id': 'light_of_water_mirror', 'item_model': '"sword/light_of_water_mirror/1"', 'custom_data': '{ultimate:1b,type:"sword",weapon:"light_of_water_mirror"}', 'max_damage': -1}
skill    = {'is_skill': False, 'name': ['終焉之鎖', '#aa00c0', '#7100b3'], 'info': ['消耗20點魔力，',"當你攻擊怪物時，",'輪流觸發以下效果:','','1.召喚終焉之鎖對敵人造成 8 點傷害', '同時給予自身','凋零易傷、挖掘加速、力量 持續 8 秒。', '2.向前方撕開裂縫，',"將怪物聚集在一起並且造成 8 點傷害，",'同時恢復 4 點血量','並給予自身 吸收II 持續 8 秒']}
ultimate    = {'is_ultimate': False, 'name': ['終焉之月', '#aa00c0', '#7100b3'], 'info': ['右鍵點擊消耗一個終焉之眼，', '開啟【終焉之月】型態持續 15 秒','大幅強化武器，', '此形態下如果攻擊會有25%機率造成大量傷害']}
attribute.append({'attribute': 'attack_damage', 'value': 6, 'slot': 'mainhand', 'operation': 'add_value'})
attribute.append({'attribute': 'attack_speed', 'value': -2.3, 'slot': 'mainhand', 'operation': 'add_value'})

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
    f.write(f'item_name=\'[{{"translate":"weapon.{item_data["id"]}","color":"{name[1]}","italic":false,"bold":true}}]\'')
    
    # lore
        # type
    f.write(f',lore=[\'[{{"translate":"weapon.{item_data["id"]}.type","italic":false,"color":"dark_gray"}}]\',\'{{"text":""}}\'')
        # story
    for i in range(1,len(story["info"])+1):
        f.write(f',\'[{{"translate":"weapon.{item_data["id"]}.story.{str(i)}","italic":false,"color":"{story["color"]}"}}]\'')
        translate["story"].append(f'# "weapon.{item_data["id"]}.story.{str(i)}" : "{story["info"][i-1]}"')
        # skill
    if skill['is_skill'] == True:
        f.write(f',\'{{"text":""}}\',\'[{{"text":"","italic":false}},{{"translate":"weapon.{item_data["id"]}.skill","color":"{skill["name"][1]}","bold":true}}]\'')
        translate["skill"].append(f'# "weapon.{item_data["id"]}.skill" : "[{skill["name"][0]}] "')
#        translate["skill"].append(f'# "weapon.{item_data["id"]}.skill.1" : "{skill["info"][0]}"')

        if len(skill["info"]) >= 1:
            for i in range(1,len(skill["info"])+1):
                f.write(f',\'[{{"text":"","italic":false}},{{"translate":"weapon.{item_data["id"]}.skill.{str(i)}","color":"{skill["name"][2]}"}}]\'')
                translate["skill"].append(f'# "weapon.{item_data["id"]}.skill.{str(i)}" : "{skill["info"][i-1]}"')
        # ultimate
    if ultimate['is_ultimate'] == True:
        f.write(f',\'{{"text":""}}\',\'[{{"text":"","italic":false}},{{"text":"\uE000","font":"minecraft:icon"}},{{"translate":"weapon.{item_data["id"]}.ultimate","color":"{ultimate["name"][1]}","bold":true}},{{"text":"\uE000","font":"minecraft:icon"}}]\'')
        translate["ultimate"].append(f'# "weapon.{item_data["id"]}.ultimate" : "[{ultimate["name"][0]}] "')
#        translate["ultimate"].append(f'# "weapon.{item_data["id"]}.ultimate.1" : "{ultimate["info"][0]}"')

        if len(ultimate["info"]) >= 1:
            for i in range(1,len(ultimate["info"])+1):
                f.write(f',\'[{{"text":"","italic":false}},{{"translate":"weapon.{item_data["id"]}.ultimate.{str(i)}","color":"{skill["name"][2]}"}}]\'')
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
        f.write(f',max_stack_size=1{item_data["max_damage"]},item_model={item_data["item_model"]},custom_data={item_data["custom_data"]}]')
    else:
        f.write(f',max_stack_size=1{item_data["max_damage"]},custom_data={item_data["custom_data"]}]')
    
    # translate
    f.write(f'\n\n# "weapon.{item_data["id"]}" : "{name[0]}"')
    f.write(f'\n# "weapon.{item_data["id"]}.type" : "{name[2]}"')
    for i in translate['story']: f.write('\n'+i)
    for i in translate['skill']: f.write('\n'+i)
    for i in translate['ultimate']: f.write('\n'+i)

    f.write(backup)