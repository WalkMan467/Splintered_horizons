import json
import os
import re


def _format_cd(cd):
    if int(cd) >= 1:
        return [
            {"translate": "weapon.skill_cd", "color": "#6E6E6E"},
            {"text": f"{cd}s"}
        ]
    return []


def _title(item_id, key, color, cd):
    row = [
        {"text": "", "italic": False},
        {"translate": f"weapon.{item_id}.{key}", "color": color, "bold": True},
        {"text": "  "}
    ]
    row.extend(_format_cd(cd))
    return row


def _build_line(item_id, section, index, line, color):

    base = {
        "translate": f"weapon.{item_id}.{section}.{index}",
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


# 🔥 enchantments merge
def _merge_enchantments(existing, lc):
    if not lc:
        return existing

    if not existing:
        return 'minecraft:enchantments={"weapons:lc":1}'

    if "minecraft:enchantments" not in existing:
        return existing

    if '"weapons:lc":1' in existing:
        return existing

    return existing.replace(
        "}",
        ',"weapons:lc":1}'
    )


def generate_give_command(item):

    name = item["name"]
    story = item["story"]
    item_data = item["item_data"]

    skill = item.get("skill", {})
    passive = item.get("passive_skills", {})
    ultimate = item.get("ultimate", {})

    attributes = item.get("attributes", [])

    rc = item_data.get("rc", False)
    lc = item_data.get("lc", False)

    translate_lines = []
    lore = []

    # ===== type =====
    lore.append([{
        "translate": f"weapon.{item_data['id']}.type",
        "color": "dark_gray",
        "italic": False
    }])
    translate_lines.append(f'"weapon.{item_data["id"]}.type" : "{name[2]}"')

    lore.append({"text": ""})

    # ===== story =====
    for i, line in enumerate(story["info"], start=1):
        lore.append([{
            "translate": f"weapon.{item_data['id']}.story.{i}",
            "color": story["color"],
            "italic": False
        }])
        translate_lines.append(f'"weapon.{item_data["id"]}.story.{i}" : "{line}"')

    lore.append({"text": ""})

    # ===== section =====
    def build_section(section_name, section_data):

        if not section_data.get(f"is_{section_name}"):
            return

        lore.append(_title(
            item_data["id"],
            section_name,
            section_data["name"][1],
            section_data["cd"]
        ))

        translate_lines.append(
            f'"weapon.{item_data["id"]}.{section_name}" : "[{section_data["name"][0]}]"'
        )

        for i, line in enumerate(section_data["info"], start=1):

            lore.append(_build_line(
                item_data["id"],
                section_name,
                i,
                line,
                section_data["name"][2]
            ))

            if isinstance(line, str):
                translate_lines.append(
                    f'"weapon.{item_data["id"]}.{section_name}.{i}" : "{line}"'
                )

            elif isinstance(line, dict) and "text" in line:
                translate_lines.append(
                    f'"weapon.{item_data["id"]}.{section_name}.{i}" : "{line["text"]}"'
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
                f'{{type:"{a["attribute"]}",id:"{a["id"]}",amount:{a["value"]},operation:"{a["operation"]}",slot:"{a["slot"]}"}}'
            )
        attr_string = ",attribute_modifiers=[" + ",".join(attr_list) + "]"

    # ===== durability =====
    max_stack = min(max(int(item_data.get("max_stack_size", 1)), 1), 99)

    if int(item_data["max_damage"]) <= 0:
        durability_part = ",unbreakable={}"
    else:
        durability_part = f',max_damage={item_data["max_damage"]},damage=0'

    # ===== custom_data =====
    custom_parts = []

    if rc:
        custom_parts.append("rc:1b")

    if lc:
        custom_parts.append("lc:1b")

    custom_parts.append(item_data["custom_data"])
    custom_data_str = "custom_data={" + ",".join(custom_parts) + "}"

    # ===== other 處理 =====
    other_list = item_data.get("other", [])

    # enchantments merge
    merged_other = []
    enchant_line = None

    for o in other_list:
        if "minecraft:enchantments" in o:
            enchant_line = o
        else:
            merged_other.append(o)

    enchant_line = _merge_enchantments(enchant_line, lc)

    if enchant_line:
        merged_other.append(enchant_line)

    # ===== give =====
    cmd = (
        f'give @s {item_data["real_item"]}['
        f'item_name={json.dumps([{"translate": f"weapon.{item_data["id"]}", "color": name[1], "bold": True}], ensure_ascii=False)},'
        f'lore={lore_json}'
        f'{attr_string},'
        f'max_stack_size={max_stack}'
        f'{durability_part},'
        f'item_model={item_data["item_model"]},'
        f'{custom_data_str}'
    )

    # rc component
    if rc:
        cmd += ',consumable={consume_seconds:10000,animation:"none",has_consume_particles:false}'

    # lc components
    if lc:
        cmd += ',piercing_weapon={deals_knockback:false,dismounts:false,hit_sound:"entity.player.attack.sweep"}'
        cmd += ',enchantment_glint_override=false'

    # other
    for o in merged_other:
        cmd += f',{o}'

    cmd += ']'

    # ===== translate =====
    lang_block = "\n\n# ==============================\n"
    lang_block += "# Translate Keys\n"
    lang_block += "# ==============================\n"
    lang_block += f'# "weapon.{item_data["id"]}" : "{name[0]}",\n'

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