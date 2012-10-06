def check_triangle(a, b, c)
  a + b > c && b + c > a && a + c > b
end

N = 100000
p = 0
for i in 1..N
  a = rand
  b = (1 - a) * rand
  c = 1 - (a + b)
  p += 1 if check_triangle(a, b, c)
end

puts p.to_f / N
