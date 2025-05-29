data modify storage player_statues:data macro.type set value "-"
data modify storage player_statues:data macro.type set from storage player_statues:data statues[0].elements[0].type

data modify storage player_statues:data macro.data set value {}
data modify storage player_statues:data macro.data set from storage player_statues:data statues[0].elements[0].data

function player_statues:internal/summon_pt1 with storage player_statues:data macro

data modify storage player_statues:data statues[0].elements append from storage player_statues:data statues[0].elements[0]
data remove storage player_statues:data statues[0].elements[0]

execute unless data storage player_statues:data statues[0].elements[0].end run function player_statues:internal/iterate_elements