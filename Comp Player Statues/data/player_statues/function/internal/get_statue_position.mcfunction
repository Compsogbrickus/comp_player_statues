data modify storage player_statues:data macro.pos_x set from storage player_statues:data statues[0].position[0]
data modify storage player_statues:data macro.pos_y set from storage player_statues:data statues[0].position[1]
data modify storage player_statues:data macro.pos_z set from storage player_statues:data statues[0].position[2]
data modify storage player_statues:data macro.rotation_yaw set from storage player_statues:data statues[0].rotation[0]
data modify storage player_statues:data macro.rotation_pitch set from storage player_statues:data statues[0].rotation[1]

execute if data storage player_statues:data macro{pos_x:"~"} run execute store result storage player_statues:data macro.pos_x double 0.0009765625 run data get entity @s Pos[0] 1024
execute if data storage player_statues:data macro{pos_y:"~"} run execute store result storage player_statues:data macro.pos_y double 0.0009765625 run data get entity @s Pos[1] 1024
execute if data storage player_statues:data macro{pos_z:"~"} run execute store result storage player_statues:data macro.pos_z double 0.0009765625 run data get entity @s Pos[2] 1024
execute if data storage player_statues:data macro{rotation_yaw:"~"} run execute store result storage player_statues:data macro.rotation_yaw double 0.0009765625 run data get entity @s Rotation[0] 1024
execute if data storage player_statues:data macro{rotation_pitch:"~"} run execute store result storage player_statues:data macro.rotation_pitch double 0.0009765625 run data get entity @s Rotation[1] 1024