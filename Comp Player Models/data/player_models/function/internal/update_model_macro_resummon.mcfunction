$data modify storage player_models:data models[$(model_index)].texture set from storage player_models:data temp_model.texture
$data modify storage player_models:data models[$(model_index)].pos_x set from storage player_models:data temp_model.pos_x
$data modify storage player_models:data models[$(model_index)].pos_y set from storage player_models:data temp_model.pos_y
$data modify storage player_models:data models[$(model_index)].pos_z set from storage player_models:data temp_model.pos_z
$data modify storage player_models:data models[$(model_index)].rotation_yaw set from storage player_models:data temp_model.rotation_yaw
$data modify storage player_models:data models[$(model_index)].rotation_pitch set from storage player_models:data temp_model.rotation_pitch

$data modify storage player_models:data macro.elements set from storage player_models:data models[$(model_index)].elements
$data modify storage player_models:data macro.texture set from storage player_models:data models[$(model_index)].texture
$data modify storage player_models:data macro.pos_x set from storage player_models:data models[$(model_index)].pos_x
$data modify storage player_models:data macro.pos_y set from storage player_models:data models[$(model_index)].pos_y
$data modify storage player_models:data macro.pos_z set from storage player_models:data models[$(model_index)].pos_z
$data modify storage player_models:data macro.rotation_yaw set from storage player_models:data models[$(model_index)].rotation_yaw
$data modify storage player_models:data macro.rotation_pitch set from storage player_models:data models[$(model_index)].rotation_pitch

scoreboard players set $player_models player_models.element_index 0
data modify storage player_models:data score.element_index set value 0
$execute store result score $player_models player_models.element_indices run data get storage player_models:data models[$(model_index)].elements

function player_models:internal/iterate_elements_kill with storage player_models:data score

$data modify storage player_models:data models[$(model_index)].elements set from storage player_models:data temp_model.elements

scoreboard players set $player_models player_models.element_index 0
data modify storage player_models:data score.element_index set value 0
$execute store result score $player_models player_models.element_indices run data get storage player_models:data models[$(model_index)].elements

$execute if score $player_models player_models.element_indices matches 0 run data modify storage player_models:data models[$(model_index)].elements set value [{id:"head"}, {id:"body"}, {id:"left_arm"}, {id:"right_arm"}, {id:"left_leg"}, {id:"right_leg"}, {id:"interaction"}]
execute if score $player_models player_models.element_indices matches 0 run scoreboard players set $player_models player_models.element_indices 7

execute unless data storage player_models:data temp_model{mode:"remove"} run function player_models:internal/iterate_elements with storage player_models:data score
$execute if data storage player_models:data temp_model{mode:"remove"} run data remove storage player_models:data models[$(model_index)]