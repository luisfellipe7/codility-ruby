def count_distinct_slices(m, a)
  n = a.size
  count = 0
  front = 0
  seen = {}

  n.times do |back|
    while front < n && seen[a[front]] == nil
      seen[a[front]] = true
      front += 1
      count += seen.size
      return 1_000_000_000 if count >= 1_000_000_000
    end
    seen.delete(a[back])
  end

  count
end
