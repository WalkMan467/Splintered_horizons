# Arrow Condition Detection

# Void Arrow

execute if predicate weapons:type/arrows/ground_detect/void_arrow run tag @s add ability.failure
execute if predicate weapons:type/arrows/ground_detect/void_arrow on origin unless predicate weapons:type/arrows/void_arrow/wither run return 0
# ==============================================
# Unconditionally

$function weapons:type/arrows/$(id)/use

kill @s