def check_triangle(a, b, c)
  check = (a + b >= c) and (b + c >= a) and (a + c >= b)
  return check
end

N = 100000
p = 0
for i in 1..N
  a = rand
  b = (1 - a) * rand
  c = 1 - (a + b)
  if check_triangle(a, b, c)
    p += 1
  end
end

puts p.to_f / N
