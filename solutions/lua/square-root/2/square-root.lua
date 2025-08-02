local SquareRoot = {}

-- Function to return the square root of a number using Newtons method 
function SquareRoot.square_root(n)
  if n <= 1 then return n end
  
  local x0 = n // 2
  local x1 = (x0 + n // x0) // 2
  
  while x1 < x0 do
    x0 = x1
    x1 = (x0 + n // x0) // 2
  end
  
  return x0
end

return SquareRoot
