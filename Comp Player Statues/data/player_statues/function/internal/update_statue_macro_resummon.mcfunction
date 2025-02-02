$data modify storage player_statues:data statues[$(statue_index)].texture set from storage player_statues:data temp_statue.texture
$data modify storage player_statues:data statues[$(statue_index)].pos_x set from storage player_statues:data temp_statue.pos_x
$data modify storage player_statues:data statues[$(statue_index)].pos_y set from storage player_statues:data temp_statue.pos_y
$data modify storage player_statues:data statues[$(statue_index)].pos_z set from storage player_statues:data temp_statue.pos_z
$data modify storage player_statues:data statues[$(statue_index)].rotation_yaw set from storage player_statues:data temp_statue.rotation_yaw
$data modify storage player_statues:data statues[$(statue_index)].rotation_pitch set from storage player_statues:data temp_statue.rotation_pitch

$data modify storage player_statues:data macro.elements set from storage player_statues:data statues[$(statue_index)].elements
$data modify storage player_statues:data macro.texture set from storage player_statues:data statues[$(statue_index)].texture
$data modify storage player_statues:data macro.pos_x set from storage player_statues:data statues[$(statue_index)].pos_x
$data modify storage player_statues:data macro.pos_y set from storage player_statues:data statues[$(statue_index)].pos_y
$data modify storage player_statues:data macro.pos_z set from storage player_statues:data statues[$(statue_index)].pos_z
$data modify storage player_statues:data macro.rotation_yaw set from storage player_statues:data statues[$(statue_index)].rotation_yaw
$data modify storage player_statues:data macro.rotation_pitch set from storage player_statues:data statues[$(statue_index)].rotation_pitch

scoreboard players set $player_statues player_statues.element_index 0
data modify storage player_statues:data score.element_index set value 0
$execute store result score $player_statues player_statues.element_indices run data get storage player_statues:data statues[$(statue_index)].elements

function player_statues:internal/iterate_elements_kill with storage player_statues:data score

$data modify storage player_statues:data statues[$(statue_index)].elements set from storage player_statues:data temp_statue.elements

scoreboard players set $player_statues player_statues.element_index 0
data modify storage player_statues:data score.element_index set value 0
$execute store result score $player_statues player_statues.element_indices run data get storage player_statues:data statues[$(statue_index)].elements

$execute if score $player_statues player_statues.element_indices matches 0 run data modify storage player_statues:data statues[$(statue_index)].elements set value [{id:"head"}, {id:"body"}, {id:"left_arm"}, {id:"right_arm"}, {id:"left_leg"}, {id:"right_leg"}, {id:"interaction"}]
execute if score $player_statues player_statues.element_indices matches 0 run scoreboard players set $player_statues player_statues.element_indices 7

execute unless data storage player_statues:data temp_statue{mode:"remove"} run function player_statues:internal/iterate_elements with storage player_statues:data score
$execute if data storage player_statues:data temp_statue{mode:"remove"} run data remove storage player_statues:data statues[$(statue_index)]