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

name = ['終焉雙重火', '#b10000', '鐮刀 / 史詩']
story = {'info': ['最終決戰過後，舊宇宙迎來了終點的結局', '同時，宇宙出現了由深淵延伸的新力量「終焉」', '這把武器的誕生目前無法得知', '同時也埋藏了很多秘密。'], 'color': 'blue'}
item_data = {'real_item': 'iron_sword', 'id': 'flame_of_finality', 'item_model': '"scythe/flame_of_finality/1"', 'custom_data': 'type:"scythe",rarity:"mythic",weapon:"flame_of_finality",forging_table:1b', 'max_damage': -1, 'rc': True, 'lc': True, 'other': ['minecraft:enchantments={"weapons:lc":1}', 'enchantment_glint_override=false', 'tooltip_style="mythic"']}
skill = {'is_skill': False, 'cd': 3, 'name': ['潮汐音浪', '#ff0000', '#b10000'], 'info': ['攻擊有 30%機率觸發【回聲音爆】', '可對6格範圍內敵人造成一次攻擊力250%的基礎傷害', '如果玩家擁有【至暗】狀態', '會使【回聲音爆】造成傷害改為 攻擊力 250% 真實傷害']}
passive_skills = {'is_passive_skills': True, 'cd': 0, 'name': ['水墨斬', '#ff0000', '#b10000'], 'info': ['普通攻擊時:', '並將一個【畫布】轉換成【黑墨】', '如果沒有【畫布】並且【黑墨】<【白墨】:', '將【黑墨】【白墨】轉換成【畫布】', '並立即在目標位置生成一個【水墨領域】', '怪物受到傷害會額外造成 2 點真實傷害']}
ultimate = {'is_ultimate': True, 'cd': 25, 'name': ['低音狂響', '#b10000', '#5c0000'], 'info': ['[%s]可以消耗一顆終焉之眼', '立即釋放【終焉音爆】', '對 8 格範圍內敵人造成 250% 真實傷害', '並且附帶 3 秒緩速 50%']}
attribute.append({'attribute': 'attack_damage', 'value': 3.5, 'slot': 'mainhand', 'operation': 'add_value'})
attribute.append({'attribute': 'attack_speed', 'value': -1, 'slot': 'mainhand', 'operation': 'add_value'})

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
        f.write(f',max_stack_size={max_stack_val}{item_data["max_damage"]},item_model={item_data["item_model"]}')
    else:
        f.write(f',max_stack_size={max_stack_val}{item_data["max_damage"]}')
    
    f.write(',custom_data={')

    #  rc & lc
    if item_data.get('rc', True):
        f.write('rc:1b,')

    if item_data.get('lc', True):
        f.write('lc:1b,')
        f.write(f'{item_data["custom_data"]}')
        f.write('}')
        f.write(',piercing_weapon={deals_knockback:false,dismounts:false,hit_sound:"entity.player.attack.sweep"')
    else:
        f.write(f'{item_data["custom_data"]}')

    f.write('}')

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
