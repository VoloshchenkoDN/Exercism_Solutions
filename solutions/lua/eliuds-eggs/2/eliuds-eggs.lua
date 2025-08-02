local EliudsEggs = {}

function EliudsEggs.egg_count(number)
  local bits_1 = 0
  while number > 0 do
    bits_1 = bits_1 + (number & 1)
    number = number >> 1
  end
  return bits_1
end

return EliudsEggs
