local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
  
  local digits = {}  
  local curNum = number
  while curNum > 0 do
    table.insert(digits, curNum % 10)
    curNum = curNum // 10
  end

  curNum = 0
  for i = 1, #digits do
    curNum = curNum + digits[i] ^ #digits
  end

  return number == curNum and true or false
  
end

return ArmstrongNumbers
