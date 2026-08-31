# ===================================================
# 烈陽使者 燃燒態 武器 熵蝕 / sunfire emissary burning weapon entropy

    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/explosion/weapon ] >>> 烈陽使者 燃燒態 武器 熵蝕 / sunfire emissary burning weapon entropy

# ===================================================

execute unless score #nightmare main.difficulty matches 1.. run \
return 0

function cse:status_effects/apply/entropy_erosion/use {duration:305, tick_rate:100, damage: 5}

advancement grant @s only players:icon/status_effects/entropy_erosion