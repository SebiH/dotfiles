# Right prompt: show how long the previous command took, Pure-style, when it
# ran for more than 5s. $CMD_DURATION is in milliseconds.
function fish_right_prompt
    if test "$CMD_DURATION" -gt 5000
        set_color 4C566A            # polar night dim
        echo -n (math --scale=1 "$CMD_DURATION / 1000")s
        set_color normal
    end
end
