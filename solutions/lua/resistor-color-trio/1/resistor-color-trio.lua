return {
  decode = function(c1, c2, c3)
    
    local colorCodes = {
      black = 0, brown = 1, red = 2, orange = 3, yellow = 4, 
      green = 5, blue = 6, violet = 7, grey = 8, white = 9
    }
    
    local value = (colorCodes[c1] * 10 + colorCodes[c2]) * (10 ^ colorCodes[c3])
    local kilo, mega, giga = 10^3, 10^6, 10^9
    local unit = 'ohms'
    
    if value >= giga then
      value = value / giga
      unit = 'gigaohms'
    elseif value >= mega then
      value = value / mega
      unit = 'megaohms'
    elseif value >= kilo then
      value = value / kilo
      unit = 'kiloohms'
    end     

    return value, unit
  end  
}
