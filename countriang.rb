def count_triangles(a)
  n = a.size
  count = 0

  a.sort!

  for p in (0..n-3)
    r = 0
    for q in (p+1..n-2)
      while r < n && a[p] + a[q] > a[r]
        r += 1
      end
      count += r - q - 1
    end
  end
  count
end
