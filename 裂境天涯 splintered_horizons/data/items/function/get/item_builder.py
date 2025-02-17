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


name = ['傳送書', '#810092', '重要道具']
story = {'info': ['右鍵可以使用傳送書', '等待 7 秒後即可 進入 / 離開 安全區，','施法期間如果移動會中斷'], 'color': 'blue'}
item_data     = {'real_item': 'book', 'id': 'tp_book', 'item_model': '"tp_book/1"', 'custom_data': '{rc:1b,tp_book:1b,type:"item",id:"tp_book"}'}

# ----- init ----- #

backup = "\n\n#name = "+str(name)+"\n#story = "+str(story)+"\n"
for i in attribute: backup = backup +"#attribute.append("+ str(i) + ")\n"
translate = {'story':[], 'skill':[], 'ultimate':[]}


# ----- generator ----- #

with open(__file__.replace("item_builder.py","#temp.mcfunction"),mode="w+",encoding="utf-8") as f:
    # id
    f.write(f'give @s {item_data["real_item"]}[')
    
    # item name
    f.write(f'item_name=\'[{{"translate":"item.{item_data["id"]}","color":"{name[1]}","italic":false,"bold":true}}]\'')
    
    # lore
        # type
    f.write(f',lore=[\'[{{"translate":"item.{item_data["id"]}.type","italic":false,"color":"dark_gray"}}]\',\'{{"text":""}}\'')
        # story
    for i in range(1,len(story["info"])+1):
        f.write(f',\'[{{"translate":"item.{item_data["id"]}.story.{str(i)}","italic":false,"color":"{story["color"]}"}}]\'')
        translate["story"].append(f'# "item.{item_data["id"]}.story.{str(i)}" : "{story["info"][i-1]}"')
                
    f.write(']')
    
    # others
    if str(item_data["item_model"]) != '""': 
        f.write(f',item_model={item_data["item_model"]},custom_data={item_data["custom_data"]}]')
    else:
        f.write(f',custom_data={item_data["custom_data"]}]')
    
    # translate
    f.write(f'\n\n# "item.{item_data["id"]}" : "{name[0]}"')
    f.write(f'\n# "item.{item_data["id"]}.type" : "{name[2]}"')
    for i in translate['story']: f.write('\n'+i)

    f.write(backup)