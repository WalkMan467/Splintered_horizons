execute if entity @s[type=player] run \
return 0

# a9f966dc-2704-4467-b606-ac6d484ff713
summon marker ~ ~ ~ {UUID:[I;-1443272996,654591079,-1241076627,1213200147]}

$execute \
    as a9f966dc-2704-4467-b606-ac6d484ff713 \
    positioned 0.0 0.0 0.0 run \
tp @s ^ ^ ^$(speed)

data modify entity @s Motion set from entity a9f966dc-2704-4467-b606-ac6d484ff713 Pos
kill a9f966dc-2704-4467-b606-ac6d484ff713