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

name = ['Tai Chis Shadow', '#969696', 'Chestplate']
story = {'info': ['Equipment from the Old World,', 'formed from residual energy during the War of Light and Darkness.'], 'color': 'blue'}
item_data     = {'real_item': 'leather_chestplate', 'id': 'tai_chis_shadow_chestplate', 'item_model': '""', 'custom_data': '{tai_chis_shadow:1b,type:"armor"}', 'max_damage': -1,'rc': False, 'other': ['tooltip_style="epic"','tooltip_display={hidden_components:["dyed_color"]}','dyed_color=6710886','equippable={slot:"chest",equip_sound:"entity.illusioner.mirror_move",asset_id:"tai_chis_shadow"}']}
skill    = {'is_skill': True,'cd': 0, 'name': ['Lament of the Pure Waters', 'dark_aqua', '#00ccff'], 'info': ['Killing enemies grants one layer of [Tai Chi]', ', with a maximum of 3 layers.', 'When you take damage,', 'you can use [Tai Chi] to negate damage once.', 'And restore 2 points of mana.', 'If you have more equipment from the same series,', 'the mana restored will increase based on the number of equipped items.']}
ultimate    = {'is_ultimate': False,'cd': 0, 'name': ['終焉之月', 'dark_aqua', '#00ccff'], 'info': ['右鍵點擊消耗一個終焉之眼，', '開啟【終焉之月】型態持續 15 秒', '大幅強化武器，', '此形態下如果攻擊會有25%機率造成大量傷害']}
attribute.append({'attribute': 'armor', 'value': 3, 'slot': 'chest', 'operation': 'add_value'})

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
    f.write(f'item_name=[{{"translate":"armor.{item_data["id"]}","color":"{name[1]}","italic":false,"bold":true}}]')
    
    # lore
        # type
    f.write(f',lore=[[{{"translate":"armor.{item_data["id"]}.type","italic":false,"color":"dark_gray"}}],{{"text":""}}')
        # story
    for i in range(1,len(story["info"])+1):
        f.write(f',[{{"translate":"armor.{item_data["id"]}.story.{str(i)}","italic":false,"color":"{story["color"]}"}}]')
        translate["story"].append(f'# "armor.{item_data["id"]}.story.{str(i)}" : "{story["info"][i-1]}"')
        # skill
    if skill['is_skill'] == True:

        if int(skill["cd"]) >= 1: skill["cd"] = ',{\"translate\":\"armor.skill_cd\",\"color\":\"#6E6E6E\"},{\"text\":\"'+str(skill["cd"])+'s\"}'
        else: skill["cd"] = ""
    
        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"translate":"armor.{item_data["id"]}.skill","color":"{skill["name"][1]}","bold":true}},{{"text":"  "}}{skill["cd"]}]')
        translate["skill"].append(f'# "armor.{item_data["id"]}.skill" : "[{skill["name"][0]}] "')
#        translate["skill"].append(f'# "armor.{item_data["id"]}.skill.1" : "{skill["info"][0]}"')

        if len(skill["info"]) >= 1:
            for i in range(1,len(skill["info"])+1):
                f.write(f',[{{"text":"","italic":false}},{{"translate":"armor.{item_data["id"]}.skill.{str(i)}","color":"{skill["name"][2]}"}}]')
                translate["skill"].append(f'# "armor.{item_data["id"]}.skill.{str(i)}" : "{skill["info"][i-1]}"')
        # ultimate
    if ultimate['is_ultimate'] == True:

        if int(ultimate["cd"]) >= 1: ultimate["cd"] = ',{\"translate\":\"armor.skill_cd\",\"color\":\"#6E6E6E\"},{\"text\":\"'+str(ultimate["cd"])+'s\"}'
        else: ultimate["cd"] = ""
    
        f.write(f',{{"text":""}},[{{"text":"","italic":false}},{{"text":"\uE000","font":"minecraft:icon"}},{{"translate":"armor.{item_data["id"]}.ultimate","color":"{ultimate["name"][1]}","bold":true}},{{"text":"\uE000","font":"minecraft:icon"}},{{"text":"  "}}{ultimate["cd"]}]')
        translate["ultimate"].append(f'# "armor.{item_data["id"]}.ultimate" : "[{ultimate["name"][0]}] "')
#        translate["ultimate"].append(f'# "armor.{item_data["id"]}.ultimate.1" : "{ultimate["info"][0]}"')

        if len(ultimate["info"]) >= 1:
            for i in range(1,len(ultimate["info"])+1):
                f.write(f',[{{"text":"","italic":false}},{{"translate":"armor.{item_data["id"]}.ultimate.{str(i)}","color":"{skill["name"][2]}"}}]')
                translate["ultimate"].append(f'# "armor.{item_data["id"]}.ultimate.{str(i)}" : "{ultimate["info"][i-1]}"')
                
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
    f.write(f'\n\n# "armor.{item_data["id"]}" : "{name[0]}"')
    f.write(f'\n# "armor.{item_data["id"]}.type" : "{name[2]}"')
    for i in translate['story']: f.write('\n'+i)
    for i in translate['skill']: f.write('\n'+i)
    for i in translate['ultimate']: f.write('\n'+i)

    f.write(backup)