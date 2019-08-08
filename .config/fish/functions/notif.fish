function fish_right_prompt
    if test $CMD_DURATION
        # Check if terminal window is hidden
        if test (xdotool getactivewindow) -ne $WINDOWID
            # Show notification if dration is more than 10 seconds
            if test $CMD_DURATION -gt 10000
                # Show duration of the last command in seconds
                set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.us", $1 / $2}')
                notify-send (echo (history | head -1) - $status - $duration)
            end
        end
    end
end
