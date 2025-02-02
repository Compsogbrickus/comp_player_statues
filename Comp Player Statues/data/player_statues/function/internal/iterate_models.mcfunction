function player_statues:internal/update_model_macro with storage player_statues:data score

function player_statues:internal/iterate_elements with storage player_statues:data score

execute store result storage player_statues:data score.model_index int 1 run scoreboard players add $player_statues player_statues.model_index 1
execute if score $player_statues player_statues.model_index < $player_statues player_statues.model_indices run function player_statues:internal/iterate_models with storage player_statues:data score