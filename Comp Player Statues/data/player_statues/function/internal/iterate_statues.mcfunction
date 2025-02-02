function player_statues:internal/update_statue_macro with storage player_statues:data score

function player_statues:internal/iterate_elements with storage player_statues:data score

execute store result storage player_statues:data score.statue_index int 1 run scoreboard players add $player_statues player_statues.statue_index 1
execute if score $player_statues player_statues.statue_index < $player_statues player_statues.statue_indices run function player_statues:internal/iterate_statues with storage player_statues:data score