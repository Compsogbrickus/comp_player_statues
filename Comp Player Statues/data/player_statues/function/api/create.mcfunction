$data modify storage player_statues:data temp_model set value $(model)

execute unless data storage player_statues:data temp_model.texture run tellraw @s {"translate": "player_statues.new_model.no_texture", "fallback": "You must specify a texture for a model to use.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage player_statues:data temp_model.texture run return fail

execute unless data storage player_statues:data temp_model.id run function player_statues:internal/new_model_id
execute unless data storage player_statues:data temp_model.elements run data modify storage player_statues:data temp_model.elements set value []

data modify storage player_statues:data models append from storage player_statues:data temp_model

scoreboard players set $player_statues player_statues.model_index 0
data modify storage player_statues:data score.model_index set value 0
execute store result score $player_statues player_statues.model_index run data get storage player_statues:data models
execute store result storage player_statues:data score.model_index int 1 run scoreboard players remove $player_statues player_statues.model_index 1

function player_statues:internal/update_model_macro with storage player_statues:data score

function player_statues:internal/iterate_elements with storage player_statues:data score
