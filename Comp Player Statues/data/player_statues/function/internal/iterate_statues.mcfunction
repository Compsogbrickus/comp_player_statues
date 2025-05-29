data modify storage player_statues:data statues[0].elements append value {end:1b}
execute unless data storage player_statues:data statues[0].elements[0].end run function player_statues:internal/iterate_elements
data remove storage player_statues:data statues[0].elements[{end:1b}]

data modify storage player_statues:data statues append from storage player_statues:data statues[0]
data remove storage player_statues:data statues[0]

execute unless data storage player_statues:data statues[0].end run function player_statues:internal/iterate_statues