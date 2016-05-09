def max_counters(n, a)
  counters = Array.new(n, 0)
  max = 0
  min = 0
  a.each do |v|
    if v <= n
      if counters[v - 1] < min + 1
        counters[v - 1] = min + 1
      else
        counters[v - 1] += 1
      end
      max = [max, counters[v - 1]].max
    else
      min = max
    end
  end
  counters.each_index do |i|
    counters[i] = min if counters[i] < min
  end
  counters
end
