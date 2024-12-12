
# get player's uuid
$function players:inventory/get_uuid {bag:$(bag)}

# return!
clear @s
function players:inventory/return2 with storage temp uuid
data remove storage temp uuid