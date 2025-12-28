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

name = ['修補附魔 - 石劍', "#d40000", '鍛造材料 / 神話']
story = {'info': ['非常珍貴的鍛造材料', '與其餘附魔的 武器 / 裝備 一樣，可以繼承附魔、注能之石的賦予的屬性', '可以使武器幾乎永不破壞', '僅限 %s', '可以拿到'], 'color': 'blue'}
item_data = {'real_item': 'stone_sword', 'id': 'mending_weapon', 'item_model': '"minecraft:sword/mending/stone_sword"', 'custom_data': '{rc:1b,type:"material",rarity:"mythic",weapon:"mending_weapon"}', 'max_damage': 300, 'max_stack_size': 1, 'rc': True, 'other': ['minecraft:enchantments={"minecraft:mending":1}', 'tooltip_style="mythic"']}
skill = {'is_skill': False, 'cd': 3, 'name': ['盤岩之握', "#b19000", "#d1bd65"], 'info': ['手持狀態下擁有 4 點耐力值上限','每 3 秒恢復 1 點耐力值','防禦成功後消耗 1 點耐力值','長按 [%s] 可以進行防禦:', '如果在攻擊的 0.05 ~ 0.25 之間使用防禦','可以免疫此次受到的傷害','並且使你獲得一層【反擊】以及【神聖之火】(00:05)','在按下防禦劍後的 0.25 ~ 0.55 下受到攻擊:','此傷害減免 50%','並且使你獲得【神聖之火】(00:05)']}
passive_skills = {'is_passive_skills': False, 'cd': 0, 'name': ['碎岩斬', "#cfcfcf", "#727272"], 'info': ['當你擁有【反擊】並攻擊命中敵人後:', '使敵人受到 250% 基礎傷害','並且移除一層【反擊】','如果你擁有【神聖之火】符文:','使你獲得吸收 I (00:10)']}
ultimate = {'is_ultimate': False, 'cd': 25, 'name': ['震天動地', '#7a0000', "#ff3a3a"], 'info': ['使用 [%s] 消耗一個終焉之眼:', '用地震之力的斧頭砸向地面使周圍敵人受到 250% 基礎傷害', '如果你擁有【終焉閃電】', '可以透過按下 [%s] 消耗一個【終焉閃電】','再次釋放該技能','並且每次提升 50% 基礎傷害倍率(最多疊加 5 層)','或者可以透過按下 [%s] 取消']}
attribute.append({'attribute': 'attack_damage', 'value': 5.0, 'slot': 'mainhand', 'operation': 'add_value'})
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

with open(__file__.replace("item_builder.py","#temp.mcfunction"),mode="w+",encoding="utf-8") \
    as f:
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
