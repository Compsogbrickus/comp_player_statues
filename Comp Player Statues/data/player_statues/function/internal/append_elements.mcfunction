data modify storage player_statues:data temp_statue.elements append from storage player_statues:data macro.new_elements[0]

data remove storage player_statues:data macro.new_elements[0]

execute unless data storage player_statues:data macro.new_elements[0].end run function player_statues:internal/append_elements