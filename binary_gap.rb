def binary_gap(n)
  s = '%b' % n

  zeroes = s.split('1')
  zeroes.pop if n % 2 == 0

  return 0 if zeroes.empty?
  zeroes.map { |zeroes| zeroes.length }.max
end
