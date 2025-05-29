scoreboard objectives add player_statues.verify dummy
scoreboard objectives add player_statues.macro_pos dummy

execute unless data storage player_statues:data statues run data modify storage player_statues:data statues set value []