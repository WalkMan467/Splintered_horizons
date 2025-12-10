## Gives a Death Locator Compass with key id $(id) pointing to $(target)
$execute if score #graves.compass mp.settings matches 0 run give @s poisonous_potato[\
  item_name={"color":"yellow","text":"Grave Key"}, \
  lore=[{"color":"gray","italic":false,"text":"Id #$(id)"}], \
  custom_data={multipack.graves.key:$(id)}, \
  !consumable, \
  item_model="minecraft:tripwire_hook"\
]

$execute if score #graves.compass mp.settings matches 1 run give @s compass[\
  item_name={"color":"yellow","text":"Death Locator Compass"},\
  lore=[{color:"gray", italic:false, text:"Id #$(id)"}], \
  custom_data={multipack.graves.key:$(id)}, \
  lodestone_tracker={target:$(target),tracked:false}\
]
