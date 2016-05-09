def min_max_division(k, m, a)
  min = a.max
  max = a.inject(:+)

  while min <= max
    mid = (min + max) / 2
    if count_blocks(mid, a) <= k
      max = mid - 1
      result = mid
    else
      min = mid + 1
    end
  end
  result
end

def count_blocks(large_sum, a)
  tmp = 0
  blocks = 1

  a.each do |value|
    if tmp + value <= large_sum
      tmp += value
    else
      tmp = value
      blocks += 1
    end
  end
  blocks
end
