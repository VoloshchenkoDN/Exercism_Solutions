return {
  rotate = function(input, key)
    return input:gsub("%a", function(s)
        local base = (s:match("%u") and 'A' or 'a'):byte()
        return string.char(base + (s:byte()+key-base) % 26)
      end)
  end
}
