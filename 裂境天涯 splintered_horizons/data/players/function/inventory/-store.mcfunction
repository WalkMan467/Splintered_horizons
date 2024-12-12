
# get player's uuid
$function players:inventory/get_uuid {bag:$(bag)}

# store!
function players:inventory/store2 with storage temp uuid
data remove storage temp uuid