output=$(pactl list sinks | grep Sink | dmenu -fn "Cantarell-8" -p "Output:" | cut -b 7)
#pactl list sinks |  grep 'Sink\|Description' | awk '{print $2}' Vadi interesni rezultati
pactl set-default-sink "$output"
