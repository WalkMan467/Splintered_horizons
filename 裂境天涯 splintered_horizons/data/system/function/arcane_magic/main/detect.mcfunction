execute as @s[tag=system.arcane_magic.moonlight,tag=system.arcane_magic.morning_light.add] at @s run function system:arcane_magic/effect/morning_light
execute as @s[tag=system.arcane_magic.morning_light,tag=system.arcane_magic.moonlight.add] at @s run function system:arcane_magic/effect/moonlight

tag @s[tag=system.arcane_magic.morning_light,tag=system.arcane_magic.morning_light.add] remove system.arcane_magic.morning_light.add
tag @s[tag=system.arcane_magic.moonlight,tag=system.arcane_magic.moonlight.add] remove system.arcane_magic.moonlight.add