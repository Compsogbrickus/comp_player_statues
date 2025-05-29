kill @e[tag=player_statue.object]

data modify storage player_statues:data statues append value {end:1b}
execute unless data storage player_statues:data statues[0].end run function player_statues:internal/iterate_statues
data remove storage player_statues:data statues[{end:1b}]
