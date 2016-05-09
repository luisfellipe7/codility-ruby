def count_div(a, b, k)
  tmp = b / k - a / k
  return tmp + 1 if a % k == 0
  tmp
end
