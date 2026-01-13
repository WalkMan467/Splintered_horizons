
execute \
    if items entity @s weapon.mainhand *[item_model="material/energy_infusion_stone/weapon/base" | item_model="material/energy_infusion_stone/weapon/rare" | item_model="material/energy_infusion_stone/weapon/epic" | item_model="material/energy_infusion_stone/weapon/mythic" | item_model="material/energy_infusion_stone/weapon/legendary"] run \
function weapons:copy_enchantment/weapon

execute \
    if items entity @s weapon.mainhand *[item_model="material/energy_infusion_stone/armor/base" | item_model="material/energy_infusion_stone/armor/rare" | item_model="material/energy_infusion_stone/armor/epic" | item_model="material/energy_infusion_stone/armor/mythic" | item_model="material/energy_infusion_stone/armor/legendary"] run \
function weapons:copy_enchantment/armor