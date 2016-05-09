def abs_distinct(a)
  absolutes = {}

  a.each do |v|
    absolutes[v.abs] = true
  end

  absolutes.size
end
