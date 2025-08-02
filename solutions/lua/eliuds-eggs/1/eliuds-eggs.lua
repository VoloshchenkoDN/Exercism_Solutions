local EliudsEggs = {}

function EliudsEggs.egg_count(number)
  local curNum, bits_1 = number, 0
  while curNum > 0 do
    bits_1 = bits_1 + curNum % 2
    curNum = curNum // 2
  end
  return bits_1
end

return EliudsEggs
