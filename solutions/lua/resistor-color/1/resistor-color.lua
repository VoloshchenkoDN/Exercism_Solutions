return {
  color_code = function(color)
    local code = 0 -- black
    if color == "brown" then code = 1
    elseif color == "red" then code = 2
    elseif color == "orange" then code = 3
    elseif color == "yellow" then code = 4
    elseif color == "green" then code = 5
    elseif color == "blue" then code = 6
    elseif color == "violet" then code = 7
    elseif color == "grey" then code = 8
    elseif color == "white" then code = 9 end
    return code
  end
}
