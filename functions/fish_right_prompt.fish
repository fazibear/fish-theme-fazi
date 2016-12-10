function __last_command_duration
  if [ $CMD_DURATION ]
    if test $CMD_DURATION -gt 1000
      echo ⏳ (set_color -o yellow)(echo $CMD_DURATION | humanize_duration)(set_color normal)" "
    end
  end
end

function fish_right_prompt
  echo (__last_command_duration)
end
