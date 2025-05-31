function player_statues:internal/kill_uuid with storage player_statues:data statues[0].elements[0]

data modify storage player_statues:data statues[0].elements append from storage player_statues:data statues[0].elements[0]
data remove storage player_statues:data statues[0].elements[0]

execute unless data storage player_statues:data statues[0].elements[0].end run function player_statues:internal/iterate_elements_kill