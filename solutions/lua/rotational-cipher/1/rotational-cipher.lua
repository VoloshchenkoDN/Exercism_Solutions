return {
  rotate = function(input, key)
    return input:gsub("%a", function(s)
        local shift = string.byte('a')
        if s:match("%u") then shift = string.byte('A') end
        return string.char( (s:byte()+key-shift) % 26 + shift)
      end)
  end
}
