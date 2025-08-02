return function(n)
  local str = ""
  
  if n % 3 ~= 0 and n % 5 ~= 0 and n % 7 ~= 0 then return string.format("%s", n) end
  
  if n % 3 == 0 then str = str .. "Pling" end
  
  if n % 5 == 0 then str = str .. "Plang" end
  
  if n % 7 == 0 then str = str .. "Plong" end

  return str
  
end
