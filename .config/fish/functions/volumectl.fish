function volumectl
    if test $argv = mute
        pactl set-sink-mute @DEFAULT_SINK@ toggle
    else if test $argv = mic
        pactl set-source-mute @DEFAULT_SOURCE@ toggle
    else if test $argv = up
        pactl set-sink-mute @DEFAULT_SINK@ false
        pactl set-sink-volume @DEFAULT_SINK@ +5%
    else if test $argv = down
        pactl set-sink-mute @DEFAULT_SINK@ false
        pactl set-sink-volume @DEFAULT_SINK@ -5%
    end
end
