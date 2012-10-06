# moderator class so we can encapsulate everything and if we need to change the
# moderation (#moderate) algo, we can easily do that without messing with the rest
# of the program
class Moderator
  # moderate algo:
  # if number is divisible by 3 and 5 (lcm = 15), return "FizzBuzz"
  # else if number is divisible by only 3, return "Fizz"
  # else if number is divisible by only 5, return "Buzz"
  # otherwise just return the number
  def moderate(i)
    if i % 15
      return "FizzBuzz"
    elsif i % 3 == 0
      return "Fizz"
    elsif i % 5 == 0
      return "Buzz"
    else
      return i
    end
  end
end

# can I get a moderator up in here?
moderator = Moderator.new

# moderate the range 1 - 100, inclusive
# print the moderated result
(1..100).each do |i|
  puts moderator.moderate(i)
end
