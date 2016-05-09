def solution(a)
    seen = {}

  max = a.max
  a.each do |v|
    seen[v] = true
  end

  seen.size == max && max == a.size ? 1 : 0
end
