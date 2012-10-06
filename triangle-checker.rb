def triangle? a, b, c
  a + b > c
end

N = 100000
triangles = 0

(1..N).each do
  breaks = [rand, rand].sort
  lengths = [breaks[0], breaks[1] - breaks[0], 1 - breaks[1]].sort
  triangles += 1 if triangle? lengths[0], lengths[1], lengths[2]
end

puts triangles.to_f / N
