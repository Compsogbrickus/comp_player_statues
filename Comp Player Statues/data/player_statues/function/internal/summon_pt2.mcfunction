$data merge entity @s $(data)

$tp @s $(pos_x) $(pos_y) $(pos_z) $(rotation_yaw) $(rotation_pitch)

data modify storage player_statues:data macro.translation_x set from storage player_statues:data statues[0].translation[0]
data modify storage player_statues:data macro.translation_y set from storage player_statues:data statues[0].translation[1]
data modify storage player_statues:data macro.translation_z set from storage player_statues:data statues[0].translation[2]
execute at @s run function player_statues:internal/translate_entity with storage player_statues:data macro

execute if data storage player_statues:data macro{type:"interaction"} run data modify storage player_statues:data macro.translation_x set from storage player_statues:data statues[0].elements[0].translation[0]
execute if data storage player_statues:data macro{type:"interaction"} run data modify storage player_statues:data macro.translation_y set from storage player_statues:data statues[0].elements[0].translation[1]
execute if data storage player_statues:data macro{type:"interaction"} run data modify storage player_statues:data macro.translation_z set from storage player_statues:data statues[0].elements[0].translation[2]
execute if data storage player_statues:data macro{type:"interaction"} at @s run function player_statues:internal/translate_entity with storage player_statues:data macro

function player_statues:internal/store_uuid with storage player_statues:data macro