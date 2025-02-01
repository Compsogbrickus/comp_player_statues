data modify storage player_models:data macro.texture set value "-"
data modify storage player_models:data macro.pos_x set value 0.0
data modify storage player_models:data macro.pos_y set value 0.0
data modify storage player_models:data macro.pos_z set value 0.0
data modify storage player_models:data macro.rotation_yaw set value 0.0
data modify storage player_models:data macro.rotation_pitch set value 0.0

execute store result storage player_models:data macro.pos_x double 0.0009765625 run data get entity @s Pos[0] 1024
execute store result score $player_models player_models.macro_pos run data get entity @s Pos[1] 1024
execute store result storage player_models:data macro.pos_y double 0.0009765625 run scoreboard players add $player_models player_models.macro_pos 1440
execute store result storage player_models:data macro.pos_z double 0.0009765625 run data get entity @s Pos[2] 1024
execute store result storage player_models:data macro.rotation_yaw double 0.0009765625 run data get entity @s Rotation[0] 1024
# execute store result storage player_models:data macro.rotation_pitch double 0.0009765625 run data get entity @s Rotation[1] 1024

$data modify storage player_models:data macro.texture set from storage player_models:data models[$(model_index)].texture
$data modify storage player_models:data macro.pos_x set from storage player_models:data models[$(model_index)].pos_x
$data modify storage player_models:data macro.pos_y set from storage player_models:data models[$(model_index)].pos_y
$data modify storage player_models:data macro.pos_z set from storage player_models:data models[$(model_index)].pos_z
$data modify storage player_models:data macro.rotation_yaw set from storage player_models:data models[$(model_index)].rotation_yaw
$data modify storage player_models:data macro.rotation_pitch set from storage player_models:data models[$(model_index)].rotation_pitch

$data modify storage player_models:data models[$(model_index)].pos_x set from storage player_models:data macro.pos_x
$data modify storage player_models:data models[$(model_index)].pos_y set from storage player_models:data macro.pos_y
$data modify storage player_models:data models[$(model_index)].pos_z set from storage player_models:data macro.pos_z
$data modify storage player_models:data models[$(model_index)].rotation_yaw set from storage player_models:data macro.rotation_yaw
$data modify storage player_models:data models[$(model_index)].rotation_pitch set from storage player_models:data macro.rotation_pitch

scoreboard players set $player_models player_models.element_index 0
data modify storage player_models:data score.element_index set value 0
$execute store result score $player_models player_models.element_indices run data get storage player_models:data models[$(model_index)].elements

$execute if score $player_models player_models.element_indices matches 0 run data modify storage player_models:data models[$(model_index)].elements set value [{id:"head"}, {id:"body"}, {id:"left_arm"}, {id:"right_arm"}, {id:"left_leg"}, {id:"right_leg"}, {id:"interaction"}]
execute if score $player_models player_models.element_indices matches 0 run scoreboard players set $player_models player_models.element_indices 7