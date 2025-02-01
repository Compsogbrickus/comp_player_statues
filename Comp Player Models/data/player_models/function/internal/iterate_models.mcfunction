function player_models:internal/update_model_macro with storage player_models:data score

function player_models:internal/iterate_elements with storage player_models:data score

execute store result storage player_models:data score.model_index int 1 run scoreboard players add $player_models player_models.model_index 1
execute if score $player_models player_models.model_index < $player_models player_models.model_indices run function player_models:internal/iterate_models with storage player_models:data score