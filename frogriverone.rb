def frog_river_one(x, a)
  fallen_leaves = {}

  a.each_with_index do |leaf, i|
    fallen_leaves[leaf] = true
    return i if fallen_leaves.size == x
  end

  -1
end
