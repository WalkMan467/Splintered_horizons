# 箭矢條件偵測 Arrow Condition Detection.

# Void Arrow

execute if predicate weapons:type/arrows/ground_detect/void_arrow run tag @s add ability.failure
execute if predicate weapons:type/arrows/ground_detect/void_arrow on origin unless predicate weapons:type/arrows/void_arrow/wither run return fail

# ==============================================
# 無條件 Unconditionally

$function weapons:type/arrows/$(id)/use

kill @s