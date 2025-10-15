scoreboard objectives add cse.entity.id dummy "[CSE] Entity ID"
scoreboard objectives add cse.global.main dummy "[CSE] Global Main"

scoreboard objectives add cse.detect.player.max_health dummy "[CSE] Player Max Health"
scoreboard objectives add cse.detect.player.health health "[CSE] Player Health"
scoreboard objectives add cse.detect.player.dmg_taken minecraft.custom:damage_taken "[CSE] Player Dmg Taken"
scoreboard objectives add cse.detect.player.hurt_time dummy "[CSE] Player Hurt Time"
scoreboard objectives add cse.detect.player.death deathCount "[CSE] Player Death"

# Status Effects
# ===============================================================================

# Bleeding
scoreboard objectives add cse.status_effects.bleeding dummy "[CSE] Bleeding"
scoreboard objectives add cse.status_effects.bleeding.tr dummy "[CSE] Bleeding Tick Rate"
scoreboard objectives add cse.status_effects.bleeding.tr_max dummy "[CSE] Bleeding Tick Rate Max"
scoreboard objectives add cse.status_effects.bleeding.dot dummy "[CSE] Bleeding Dot"
scoreboard objectives add cse.status_effects.bleeding.dot_max dummy "[CSE] Bleeding Dot Max"

# ===============================================================================

# Weakness
scoreboard objectives add cse.status_effects.armor_shred dummy "[CSE] Weakness"
scoreboard objectives add cse.status_effects.armor_shred.base.value dummy "[CSE] Weakness Base Value"
scoreboard objectives add cse.status_effects.armor_shred.value dummy "[CSE] Weakness Value"
scoreboard objectives add cse.status_effects.armor_shred.math dummy "[CSE] Weakness Math"
scoreboard objectives add cse.status_effects.armor_shred.id dummy "[CSE] Weakness ID"

scoreboard objectives add cse.status_effects.armor_shred.value.max dummy "[CSE] Weakness Value Max"

# ===============================================================================

# Weakness
scoreboard objectives add cse.status_effects.weakness dummy "[CSE] Weakness"
scoreboard objectives add cse.status_effects.weakness.base.value dummy "[CSE] Weakness Base Value"
scoreboard objectives add cse.status_effects.weakness.value dummy "[CSE] Weakness Value"
scoreboard objectives add cse.status_effects.weakness.math dummy "[CSE] Weakness Math"
scoreboard objectives add cse.status_effects.weakness.id dummy "[CSE] Weakness ID"

scoreboard objectives add cse.status_effects.weakness.value.max dummy "[CSE] Weakness Value Max"

# ===============================================================================

scoreboard players add #global cse.entity.id 0

scoreboard players add #global cse.status_effects.bleeding 1
scoreboard players add #hide.reload.tips cse.global.main 0