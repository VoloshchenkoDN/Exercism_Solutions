return function(s)
  local t, ch = {}, ''
  local s = s:lower(s)
  for i = 1, #s do
    ch = s:sub(i,i)
    if ch ~= ' ' and ch ~= '-' then 
      if t[ch] then return false end
      t[ch] = true
    end
  end
  return true
end
