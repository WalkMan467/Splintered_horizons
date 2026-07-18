import json
import os
import re

def _title(item_id, key, color):
    row = [
        {"text": "", "italic": False},
        {"translate": f"item.{item_id}.{key}", "color": color, "bold": True},
        {"text": "  "}
    ]
    return row


def _build_line(item_id, section, index, line, color):

    base = {
        "translate": f"item.{item_id}.{section}.{index}",
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
    attributes = item.get("attributes", {})

    item_id = item_data.get("id", "unknown")
    item_model = item_data.get("item_model", 0)
    custom_data = item_data.get("custom_data", "")
    enchantments = item_data.get("enchantments", [])
    real_item = item_data.get("real_item", "minecraft:stick")

    # ==============================
    # max_stack_size
    # ==============================

    max_stack_size = int(item_data.get("max_stack_size", 64))

    translate_lines = []
    lore = []

    # ===== type =====
    lore.append([{
        "translate": f"item.{item_id}.type",
        "color": "dark_gray",
        "italic": False
    }])
    translate_lines.append(f'"item.{item_id}.type" : "{name[2]}"')

    lore.append({"text": ""})

    # ===== story =====
    story_lines = story.get("info", [])
    for i in range(1, 5):
        line = story_lines[i - 1] if i <= len(story_lines) else ""
        lore.append([{
            "translate": f"item.energy_infusion_stone.generic.story.{i}",
            "color": story.get("color", "gray"),
            "italic": False
        }])

    lore.append({"text": ""})

    # ===== section =====
    def build_section(section_name, section_data):

        if not section_data.get(f"is_{section_name}", False):
            return

        if section_name == "attributes":
            lore.append([
                {"text": "", "italic": False},
                {"translate": "item.energy_infusion_stone.generic.attributes", "color": section_data.get("name", ["", "white", "white"])[1], "bold": True},
                {"text": "  "}
            ])
        else:
            lore.append(_title(
                item_id,
                section_name,
                section_data.get("name", ["", "white", "white"])[1]
            ))
            translate_lines.append(
                f'"item.{item_id}.{section_name}" : "[{section_data.get("name", [""])[0]}]"'
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
                    f'"item.{item_id}.{section_name}.{i}" : "{line}"'
                )

            elif isinstance(line, dict) and "text" in line:
                translate_lines.append(
                    f'"item.{item_id}.{section_name}.{i}" : "{line["text"]}"'
                )

        lore.append({"text": ""})

    build_section("skill", skill)
    build_section("passive_skills", passive)
    build_section("attributes", attributes)

    lore_json = json.dumps(lore, ensure_ascii=False)
    lore_json = _fix_with_booleans(lore_json)

    # ===== custom_data =====
    custom_data_str = f"custom_data={{{custom_data}}}" if custom_data else ""

    enchantments_str = ""
    if enchantments and enchantments != [""]:
        parsed_enchantments = []
        for entry in enchantments:
            if isinstance(entry, dict):
                enchant_id = entry.get("id")
                level = entry.get("level", 1)
                if enchant_id:
                    parsed_enchantments.append((str(enchant_id), str(level)))
            elif isinstance(entry, str) and entry.strip():
                enchant_id, sep, level = entry.rpartition(":")
                if not sep:
                    enchant_id, level = entry, "1"
                if enchant_id:
                    parsed_enchantments.append((enchant_id, level))

        if parsed_enchantments:
            enchantments_str = (
                "enchantments={"
                + ",".join(f"\"{enchant_id}\":{level}" for enchant_id, level in parsed_enchantments)
                + "},enchantment_glint_override=false"
            )

    # ===== other =====
    other_list = item_data.get("other", [])

    # ==============================
    # 自動加入 max_stack_size component
    # ==============================

    has_max_stack_component = any(
        "max_stack_size=" in o
        for o in other_list
    )

    if not has_max_stack_component:
        other_list.append(
            f"max_stack_size={max_stack_size}"
        )

    # ===== give =====
    cmd = (
        f'give @s {real_item}['
        f'item_name={json.dumps([{"translate": "item.energy_infusion_stone.generic", "color": name[1], "bold": True}], ensure_ascii=False)},'
        f'lore={lore_json},'
        f'item_model={item_model}'
    )

    if enchantments_str:
        cmd += f',{enchantments_str}'

    if custom_data_str:
        cmd += f',{custom_data_str}'

    for o in other_list:
        cmd += f',{o}'

    # ==============================
    # give count
    # ==============================

    cmd += f'] {max_stack_size}'

    # ===== translate =====
    lang_block = "\n\n# ==============================\n"
    lang_block += "# Translate Keys\n"
    lang_block += "# ==============================\n"

    for line in translate_lines:
        lang_block += f"# {line},\n"

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