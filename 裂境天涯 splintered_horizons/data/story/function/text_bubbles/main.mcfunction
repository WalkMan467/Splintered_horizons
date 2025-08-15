## ---Detect--- ##

    # If true;
    execute if entity @p[distance=..8] if entity @s[tag=!story.text_bubbles.actived] run function story:text_bubbles/1/true

    # Else
    execute unless entity @p[distance=..8] if entity @s[tag=story.text_bubbles.actived] run function story:text_bubbles/1/false