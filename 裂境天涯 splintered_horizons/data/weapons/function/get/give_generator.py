import json
import os


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


def _line(item_id, section, index, color):
    return [
        {"text": "", "italic": False},
        {"translate": f"weapon.{item_id}.{section}.{index}", "color": color, "italic": False}
    ]


def generate_give_command(item):

    name = item["name"]
    story = item["story"]
    item_data = item["item_data"]

    skill = item.get("skill", {})
    passive = item.get("passive_skills", {})
    ultimate = item.get("ultimate", {})

    attributes = item.get("attributes", [])

    translate_lines = []
    lore = []

    # ==============================
    # type
    # ==============================

    lore.append([{
        "translate": f"weapon.{item_data['id']}.type",
        "color": "dark_gray",
        "italic": False
    }])

    translate_lines.append(
        f'"weapon.{item_data["id"]}.type" : "{name[2]}"'
    )

    lore.append({"text": ""})

    # ==============================
    # story
    # ==============================

    for i, line in enumerate(story["info"], start=1):

        lore.append([{
            "translate": f"weapon.{item_data['id']}.story.{i}",
            "color": story["color"],
            "italic": False
        }])

        translate_lines.append(
            f'"weapon.{item_data["id"]}.story.{i}" : "{line}"'
        )

    lore.append({"text": ""})

    # ==============================
    # skill
    # ==============================

    if skill.get("is_skill"):

        lore.append(
            _title(
                item_data["id"],
                "skill",
                skill["name"][1],
                skill["cd"]
            )
        )

        translate_lines.append(
            f'"weapon.{item_data["id"]}.skill" : "[{skill["name"][0]}]"'
        )

        for i, line in enumerate(skill["info"], start=1):

            lore.append(
                _line(
                    item_data["id"],
                    "skill",
                    i,
                    skill["name"][2]
                )
            )

            translate_lines.append(
                f'"weapon.{item_data["id"]}.skill.{i}" : "{line}"'
            )

        lore.append({"text": ""})

    # ==============================
    # passive
    # ==============================

    if passive.get("is_passive_skills"):

        lore.append(
            _title(
                item_data["id"],
                "passive_skills",
                passive["name"][1],
                passive["cd"]
            )
        )

        translate_lines.append(
            f'"weapon.{item_data["id"]}.passive_skills" : "[{passive["name"][0]}]"'
        )

        for i, line in enumerate(passive["info"], start=1):

            lore.append(
                _line(
                    item_data["id"],
                    "passive_skills",
                    i,
                    passive["name"][2]
                )
            )

            translate_lines.append(
                f'"weapon.{item_data["id"]}.passive_skills.{i}" : "{line}"'
            )

        lore.append({"text": ""})

    # ==============================
    # ultimate
    # ==============================

    if ultimate.get("is_ultimate"):

        lore.append(
            _title(
                item_data["id"],
                "ultimate",
                ultimate["name"][1],
                ultimate["cd"]
            )
        )

        translate_lines.append(
            f'"weapon.{item_data["id"]}.ultimate" : "[{ultimate["name"][0]}]"'
        )

        for i, line in enumerate(ultimate["info"], start=1):

            lore.append(
                _line(
                    item_data["id"],
                    "ultimate",
                    i,
                    ultimate["name"][2]
                )
            )

            translate_lines.append(
                f'"weapon.{item_data["id"]}.ultimate.{i}" : "{line}"'
            )

    lore_json = json.dumps(lore, ensure_ascii=False)

    # ==============================
    # attributes
    # ==============================

    attr_string = ""

    if attributes:

        attr_list = []

        for a in attributes:

            attr_list.append(
                f'{{type:"{a["attribute"]}",id:"{a["id"]}",amount:{a["value"]},operation:"{a["operation"]}",slot:"{a["slot"]}"}}'
            )

        attr_string = ",attribute_modifiers=[" + ",".join(attr_list) + "]"

    # ==============================
    # durability / unbreakable
    # ==============================

    max_stack = min(max(int(item_data.get("max_stack_size", 1)), 1), 99)

    if int(item_data["max_damage"]) <= 0:
        durability_part = ",unbreakable={}"
    else:
        durability_part = f',max_damage={item_data["max_damage"]},damage=0'

    # ==============================
    # give command
    # ==============================

    cmd = (
        f'give @s {item_data["real_item"]}['
        f'item_name={json.dumps([{"translate": f"weapon.{item_data["id"]}", "color": name[1], "bold": True}], ensure_ascii=False)},'
        f'lore={lore_json}'
        f'{attr_string},'
        f'max_stack_size={max_stack}'
        f'{durability_part},'
        f'item_model={item_data["item_model"]},'
        f'custom_data={{{item_data["custom_data"]}}}'
    )

    for o in item_data.get("other", []):
        cmd += f',{o}'

    cmd += ']'

    # ==============================
    # Translate Keys
    # ==============================

    lang_block = "\n\n# ==============================\n"
    lang_block += "# Translate Keys\n"
    lang_block += "# ==============================\n"

    lang_block += f'# "weapon.{item_data["id"]}" : "{name[0]}",\n'

    for line in translate_lines:
        lang_block += f"# {line},\n"

    # ==============================
    # item_builder backup
    # ==============================

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