def ladder(a, b)
  fibs = fibs(a.max)

  a.zip(b).map do |rungs, p|
    fibs[rungs + 1] & ((1 << p) - 1)
  end
end

def fibs(n)
  fibs = Array.new(n + 2, 0)
  fibs[1] = 1

  for i in 2..n+1
    fibs[i] = fibs[i - 1] + fibs[i - 2]
  end

  fibs
end
