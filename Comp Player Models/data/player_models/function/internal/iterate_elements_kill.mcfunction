$function player_models:internal/kill_uuid with storage player_models:data models[$(model_index)].elements[$(element_index)]

execute store result storage player_models:data score.element_index int 1 run scoreboard players add $player_models player_models.element_index 1
execute if score $player_models player_models.element_index < $player_models player_models.element_indices run function player_models:internal/iterate_elements_kill with storage player_models:data score