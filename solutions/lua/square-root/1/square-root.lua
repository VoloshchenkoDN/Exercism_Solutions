local SquareRoot = {}

function SquareRoot.square_root(n)
  local lo, mid, res, hi = 1, 1, 1, n
  while lo <= hi do
    mid = lo + (hi - lo) // 2
    if mid * mid <= n then
      res, lo = mid, mid + 1
    else
      hi = mid - 1
    end
  end
  return res
end

return SquareRoot
