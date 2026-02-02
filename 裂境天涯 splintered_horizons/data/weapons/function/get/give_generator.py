def generate_give_command(item):
    idata = item["item_data"]
    return f'/give @s {idata["real_item"]}'
