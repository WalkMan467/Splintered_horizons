from settings import settings
from item_builder import build_item_struct
from give_generator import generate_give_command

item = build_item_struct()

if settings["give"]:
    cmd = generate_give_command(item)
    with open("output.mcfunction", "w", encoding="utf-8") as f:
        f.write(cmd)