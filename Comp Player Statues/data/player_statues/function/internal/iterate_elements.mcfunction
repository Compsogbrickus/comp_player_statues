function player_statues:internal/update_element_macro with storage player_statues:data score

execute if data storage player_statues:data macro{id:"interaction"} run execute summon minecraft:interaction run function player_statues:internal/summon with storage player_statues:data macro
execute unless data storage player_statues:data macro{id:"interaction"} run execute summon minecraft:item_display run function player_statues:internal/summon with storage player_statues:data macro

execute store result storage player_statues:data score.element_index int 1 run scoreboard players add $player_statues player_statues.element_index 1
execute if score $player_statues player_statues.element_index < $player_statues player_statues.element_indices run function player_statues:internal/iterate_elements with storage player_statues:data score