import json
import os
import re


def _format_cd(cd):
    if int(cd) >= 1:
        return [
            {"translate": "armor.skill_cd", "color": "#6E6E6E"},
            {"text": f"{cd}s"}
        ]
    return []


def _title(item_id, key, color, cd):
    row = [
        {"text": "", "italic": False},
        {"translate": f"armor.{item_id}.{key}", "color": color, "bold": True},
        {"text": "  "}
    ]
    row.extend(_format_cd(cd))
    return row


def _build_line(item_id, section, index, line, color):

    base = {
        "translate": f"armor.{item_id}.{section}.{index}",
        "color": color,
        "italic": False
    }

    if isinstance(line, dict):

        if "text" in line and "with" in line:
            base["with"] = line["with"]
            return [{"text": "", "italic": False}, base]

        if "with" in line:
            base["with"] = line["with"]
            return [{"text": "", "italic": False}, base]

        comp = {"italic": False}
        comp.update(line)

        if "color" not in comp:
            comp["color"] = color

        return [{"text": "", "italic": False}, comp]

    return [{"text": "", "italic": False}, base]


def _fix_with_booleans(lore_str):
    def replace(match):
        content = match.group(0)
        content = content.replace("true", "True")
        content = content.replace("false", "False")
        return content

    return re.sub(r'"with":\s*\[[^\]]*\]', replace, lore_str)


def generate_give_command(item):

    name = item.get("name", ["", "white", ""])
    story = item.get("story", {"info": [], "color": "gray"})
    item_data = item.get("item_data", {})

    skill = item.get("skill", {})
    passive = item.get("passive_skills", {})
    ultimate = item.get("ultimate", {})

    attributes = item.get("attributes", [])

    item_id = item_data.get("id", "unknown")
    real_item = item_data.get("real_item", "minecraft:stick")
    item_model = item_data.get("item_model", 0)
    custom_data = item_data.get("custom_data", "")

    translate_lines = []
    lore = []

    # ===== type =====
    lore.append([{
        "translate": f"armor.{item_id}.type",
        "color": "dark_gray",
        "italic": False
    }])
    translate_lines.append(f'"armor.{item_id}.type" : "{name[2]}"')

    lore.append({"text": ""})

    # ===== story =====
    for i, line in enumerate(story.get("info", []), start=1):
        lore.append([{
            "translate": f"armor.{item_id}.story.{i}",
            "color": story.get("color", "gray"),
            "italic": False
        }])
        translate_lines.append(f'"armor.{item_id}.story.{i}" : "{line}"')

    lore.append({"text": ""})

    # ===== section =====
    def build_section(section_name, section_data):

        if not section_data.get(f"is_{section_name}", False):
            return

        lore.append(_title(
            item_id,
            section_name,
            section_data.get("name", ["", "white", "white"])[1],
            section_data.get("cd", 0)
        ))

        translate_lines.append(
            f'"armor.{item_id}.{section_name}" : "[{section_data.get("name", [""])[0]}]"'
        )

        for i, line in enumerate(section_data.get("info", []), start=1):

            lore.append(_build_line(
                item_id,
                section_name,
                i,
                line,
                section_data.get("name", ["", "", "white"])[2]
            ))

            if isinstance(line, str):
                translate_lines.append(
                    f'"armor.{item_id}.{section_name}.{i}" : "{line}"'
                )

            elif isinstance(line, dict) and "text" in line:
                translate_lines.append(
                    f'"armor.{item_id}.{section_name}.{i}" : "{line["text"]}"'
                )

        lore.append({"text": ""})

    build_section("skill", skill)
    build_section("passive_skills", passive)
    build_section("ultimate", ultimate)

    lore_json = json.dumps(lore, ensure_ascii=False)
    lore_json = _fix_with_booleans(lore_json)

    # ===== attributes =====
    attr_string = ""
    if attributes:
        attr_list = []
        for a in attributes:
            attr_list.append(
                f'{{type:"{a.get("attribute")}",id:"{a.get("id")}",amount:{a.get("value",0)},operation:"{a.get("operation","add_value")}",slot:"{a.get("slot","mainhand")}"}}'
            )
        attr_string = ",attribute_modifiers=[" + ",".join(attr_list) + "]"

    # ===== custom_data =====
    custom_data_str = f"custom_data={{{custom_data}}}" if custom_data else ""

    # ===== other =====
    other_list = item_data.get("other", [])

    # ===== give =====
    cmd = (
        f'give @s {real_item}['
        f'item_name={json.dumps([{"translate": f"armor.{item_id}", "color": name[1], "bold": True}], ensure_ascii=False)},'
        f'lore={lore_json}'
        f'{attr_string},'
        f'item_model={item_model}'
    )

    if custom_data_str:
        cmd += f',{custom_data_str}'

    for o in other_list:
        cmd += f',{o}'

    cmd += ']'

    # ===== translate =====
    lang_block = "\n\n# ==============================\n"
    lang_block += "# Translate Keys\n"
    lang_block += "# ==============================\n"
    lang_block += f'# "armor.{item_id}" : "{name[0]}",\n'

    for line in translate_lines:
        lang_block += f"# {line},\n"

    # ===== backup =====
    base_dir = os.path.dirname(os.path.abspath(__file__))
    builder_path = os.path.join(base_dir, "item_builder.py")

    backup_block = "\n# ==============================\n"
    backup_block += "# item_builder.py Backup\n"
    backup_block += "# ==============================\n"

    if os.path.exists(builder_path):
        with open(builder_path, "r", encoding="utf-8") as f:
            for line in f.readlines():
                backup_block += "# " + line
    else:
        backup_block += "# (item_builder.py not found)\n"

    return cmd + lang_block + backup_block