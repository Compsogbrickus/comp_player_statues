function player_models:internal/update_element_macro with storage player_models:data score

execute if data storage player_models:data macro{id:"interaction"} run execute summon minecraft:interaction run function player_models:internal/summon with storage player_models:data macro
execute unless data storage player_models:data macro{id:"interaction"} run execute summon minecraft:item_display run function player_models:internal/summon with storage player_models:data macro

execute store result storage player_models:data score.element_index int 1 run scoreboard players add $player_models player_models.element_index 1
execute if score $player_models player_models.element_index < $player_models player_models.element_indices run function player_models:internal/iterate_elements with storage player_models:data score