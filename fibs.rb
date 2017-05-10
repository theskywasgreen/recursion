def fibs(n)
  o = 0
  p = 1
  fib = []
    (n).times do
      fib << o
      o, p = p, o + p
    end
    return fib
end

def fibs_rec(n, fib = [0])
  return [] if n == 0
  return fib if n == 1

  if fib.size == 1
    fib << 1
  else
    fib << fib[-2] + fib[-1]
  end
  fibs_rec(n - 1, fib)
end
