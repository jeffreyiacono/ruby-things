def triangle?(a, b, c)
  a + b > c
end

N = 100000
p = 0
for i in 1..N
  breaks = [rand, rand].sort
  lengths = [breaks[0], breaks[1] - breaks[0], 1 - breaks[1]].sort
  p += 1 if triangle?(lengths[0], lengths[1], lengths[2])
end

puts p.to_f / N
