return {
  value = function(colors)
    local colorCodes = {
      black = 0, brown = 1, red = 2, orange = 3, yellow = 4, 
      green = 5, blue = 6, violet = 7, grey = 8, white = 9
    }

    local value = 0
    for i = 1, 2 do
      value = value * 10 + colorCodes[colors[i]]
    end
    
    return value
  end
}
