$function player_statues:internal/kill_uuid with storage player_statues:data models[$(model_index)].elements[$(element_index)]

execute store result storage player_statues:data score.element_index int 1 run scoreboard players add $player_statues player_statues.element_index 1
execute if score $player_statues player_statues.element_index < $player_statues player_statues.element_indices run function player_statues:internal/iterate_elements_kill with storage player_statues:data score