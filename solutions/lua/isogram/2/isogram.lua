return function(s)
  return not s:lower(s):find('(%a).-%1')
end
