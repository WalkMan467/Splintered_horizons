# True

execute if items entity @s armor.chest *[custom_data~{id:"test"}] if predicate armor:type/nihilism/2/shadow run function armor:type/nihilism/2/guide

# False

execute unless predicate armor:type/nihilism/2/shadow run attribute @s armor modifier remove armor.nihilism.1
execute unless predicate armor:type/nihilism/2/shadow run attribute @s movement_speed modifier remove armor.nihilism.1