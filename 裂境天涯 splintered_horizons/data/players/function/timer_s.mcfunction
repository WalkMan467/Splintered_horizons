scoreboard players add @a[scores={player.mana=..21}] player.mana 1
execute if score #global player.ultimate matches 1.. run scoreboard players remove #global player.ultimate 1

schedule function players:timer_s 1s