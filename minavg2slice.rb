def min_avg_two_slice(a)
  min_avg = 1 / 0.0
  min_index = 0

  a.each_cons(2).each_with_index do |double, i|
    avg = double.inject(:+) / 2.0

    if avg < min_avg
      min_index = i
      min_avg = avg
    end
  end

  a.each_cons(3).each_with_index do |triple, i|
    avg = triple.inject(:+) / 3.0

    if avg < min_avg
      min_index = i
      min_avg = avg
    end
  end

  min_index
end
