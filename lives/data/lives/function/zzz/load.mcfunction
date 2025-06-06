scoreboard objectives add lives.verify dummy
scoreboard objectives add lives.macro_pos dummy

execute unless data storage lives:data displays run data modify storage lives:data displays set value []