tag @s add particle.error
tellraw @s {"translate":"particle.radial_exoansion.error.1.1","color":"red",underlined:true,fallback:"The instruction has stopped executing for the following reason:"}
tellraw @s {"text":""}
tellraw @s {"translate":"particle.radial_exoansion.error.1.2","color":"red",underlined:true,fallback:"The \"Physics\" component should be a Boolean value (true or false)"}

tellraw @s {"text":""}
tellraw @s [{text:"👉    "},{text:"true",bold:false,underlined:true,color:"dark_green",click_event:{action:"copy_to_clipboard",value:"true"},hover_event:{action:"show_text",value:[{text:"Click the text to copy",bold:true,color:"white"}]}}]
tellraw @s [{text:"👉    "},{text:"false",bold:false,underlined:true,color:"dark_red",click_event:{action:"copy_to_clipboard",value:"false"},hover_event:{action:"show_text",value:[{text:"Click the text to copy",bold:true,color:"white"}]}}]