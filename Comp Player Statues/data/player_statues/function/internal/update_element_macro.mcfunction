data modify storage player_statues:data macro.id set value "-"
data modify storage player_statues:data macro.right_rotation set value [0.0, 0.0, 0.0, 1.0]
data modify storage player_statues:data macro.scale set value [1.0, 1.0, 1.0]
data modify storage player_statues:data macro.left_rotation set value [0.0, 0.0, 0.0, 1.0]
data modify storage player_statues:data macro.translation set value [0.0, 0.0, 0.0]

data modify storage player_statues:data macro.width set value 0.6
data modify storage player_statues:data macro.height set value 1.8
data modify storage player_statues:data macro.response set value 0

$data modify storage player_statues:data macro.id set from storage player_statues:data models[$(model_index)].elements[$(element_index)].id
execute if data storage player_statues:data macro{id:"left_arm"} run data modify storage player_statues:data macro.translation set value [0.322265625, -0.1171875, 0.0]
execute if data storage player_statues:data macro{id:"right_arm"} run data modify storage player_statues:data macro.translation set value [-0.322265625, -0.1171875, 0.0]
execute if data storage player_statues:data macro{id:"left_leg"} run data modify storage player_statues:data macro.translation set value [0.1171875, -0.703125, 0.0]
execute if data storage player_statues:data macro{id:"right_leg"} run data modify storage player_statues:data macro.translation set value [-0.1171875, -0.703125, 0.0]
execute if data storage player_statues:data macro{id:"interaction"} run data modify storage player_statues:data macro.translation set value [0.0, -1.40625, 0.0]

$data modify storage player_statues:data macro.right_rotation set from storage player_statues:data models[$(model_index)].elements[$(element_index)].right_rotation
$data modify storage player_statues:data macro.scale set from storage player_statues:data models[$(model_index)].elements[$(element_index)].scale
$data modify storage player_statues:data macro.left_rotation set from storage player_statues:data models[$(model_index)].elements[$(element_index)].left_rotation
$data modify storage player_statues:data macro.translation set from storage player_statues:data models[$(model_index)].elements[$(element_index)].translation

$data modify storage player_statues:data macro.width set from storage player_statues:data models[$(model_index)].elements[$(element_index)].width
$data modify storage player_statues:data macro.height set from storage player_statues:data models[$(model_index)].elements[$(element_index)].height
$data modify storage player_statues:data macro.response set from storage player_statues:data models[$(model_index)].elements[$(element_index)].response

execute if data storage player_statues:data macro{id:"interaction"} run data modify storage player_statues:data macro.translation_x set from storage player_statues:data macro.translation[0]
execute if data storage player_statues:data macro{id:"interaction"} run data modify storage player_statues:data macro.translation_y set from storage player_statues:data macro.translation[1]
execute if data storage player_statues:data macro{id:"interaction"} run data modify storage player_statues:data macro.translation_z set from storage player_statues:data macro.translation[2]
