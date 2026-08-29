tag @s add particle.error
tellraw @s {"translate":"particle.radial_exoansion.error.1.1","color":"red",underlined:true,fallback:"The instruction has stopped executing for the following reason:"}
tellraw @s {"text":""}
tellraw @s {"translate":"particle.radial_exoansion.error.1.2","color":"red",underlined:true,fallback:"Components in \"Type\" not found"}

tellraw @s {"text":""}
tellraw @s [{text:"👉    "},{text:"radial_exoansion",bold:false,underlined:true,color:"gray",click_event:{action:"copy_to_clipboard",value:"radial_exoansion"},hover_event:{action:"show_text",value:[{text:"Click the text to copy",bold:true,color:"white"}]}}]