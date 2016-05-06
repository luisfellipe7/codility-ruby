
def tape_equilibrium(a)
  n = a.size
  left_sum = 0
  right_sum = a.inject(:+)
  min = 1 / 0.0

  a.each_index do |i|
    break if i == n - 1
    left_sum += a[i]
    right_sum -= a[i]
    abs = (left_sum - right_sum).abs
    min = [min, abs].min
  end
  min
end
