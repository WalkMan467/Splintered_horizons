# main.py
import os
from settings import settings
from item_builder import build_item_struct
from give_generator import generate_give_command

item = build_item_struct()

if settings["give"]:
    cmd = generate_give_command(item)

    # 取得 main.py 所在資料夾
    base_dir = os.path.dirname(os.path.abspath(__file__))
    output_path = os.path.join(base_dir, "temp.mcfunction")

    with open(output_path, "w", encoding="utf-8") as f:
        f.write(cmd)

print ("")
print ("Done!")
print ("")