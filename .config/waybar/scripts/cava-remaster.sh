#!/bin/bash

bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

# Create sed dictionary
for (( i=0; i<${#bar}; i++ )); do
    dict="${dict}s/$i/${bar:$i:1}/g;"
done

pipe="/tmp/cava.fifo"

# Clean up old fifo and kill existing cava
pkill -f "cava -p"
[ -p "$pipe" ] && rm -f "$pipe"
mkfifo "$pipe"

# Write cava config
config_file="/tmp/waybar_cava_config"
cat <<EOF > "$config_file"
[general]
bars = 12
bar_width = 1
[input]
method = pipewire
[output]
method = raw
raw_target = $pipe
data_format = ascii
ascii_max_range = 7
[color]
gradient = 1
gradient_count = 4
gradient_color_1 = '#c6a0f6'
gradient_color_2 = '#f5bde6'
gradient_color_3 = '#f0c6c6'
gradient_color_4 = '#f4dbd6'
EOF

# Start cava
cava -p "$config_file" &

# Read and format bars
(
    while read -r cmd; do
        echo "$cmd" | sed "$dict"
    done < "$pipe"
)
