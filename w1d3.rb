def sum_to(n)
  return nil if n.negative?
  return 0 if n == 0
  n + sum_to(n - 1)
end

def add_numbers(arr = nil)
    if arr.nil? || arr.empty?
      return nil
    elsif arr.length == 1
      return arr.shift
    end
  arr.shift + add_numbers(arr)
end


def gamma_fnc(n)
  return nil if n < 1
  return 1 if n == 1
  (n - 1) * gamma_fnc(n - 1)
end
