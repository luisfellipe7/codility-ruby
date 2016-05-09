def min_abs_sum_of_two(a)
  n = a.size
  back = 0
  front = n - 1
  min = abs_sum(a[back], a[front])
  a.sort!

  while back != front && min > 0
    min = min_abs_sum(a[back], a[front], min)
    if abs_sum(a[back+1], a[front]) < abs_sum(a[back], a[front-1])
      back += 1
    else
      front -= 1
    end
  end
  min = min_abs_sum(a[back], a[front], min)

  min
end

def abs_sum(a, b)
  (a + b).abs
end

def min_abs_sum(a, b, min)
  if abs_sum(a, b) < min
    abs_sum(a, b)
  else
    min
  end
end
