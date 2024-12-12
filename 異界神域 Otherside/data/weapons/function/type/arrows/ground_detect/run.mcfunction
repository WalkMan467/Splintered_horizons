# 箭矢條件偵測 Arrow Condition Detection.

# Void Arrow

execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{id:"void_arrow"}}}}] run tag @s add ability.failure
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{id:"void_arrow"}}}}] on origin unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run return fail

# ==============================================
# 無條件 Unconditionally

$function weapons:type/arrows/$(id)/use

kill @s