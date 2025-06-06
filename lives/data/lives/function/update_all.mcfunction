kill @e[tag=lives.object]

data modify storage lives:data displays append value {end:1b}
execute unless data storage lives:data displays[0].end run function lives:zzz/display/loop
data remove storage lives:data displays[{end:1b}]